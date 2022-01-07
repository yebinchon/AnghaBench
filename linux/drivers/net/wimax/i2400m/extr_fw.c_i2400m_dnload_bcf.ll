; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_dnload_bcf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_dnload_bcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_bcf_hdr = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_bootrom_header = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"(i2400m %p bcf %p bcf_len %zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"downloading section #%zu (@%zu %zu B) to 0x%08x\0A\00", align 1
@I2400M_BRH_SIGNED_JUMP = common dso_local global i64 0, align 8
@I2400M_BRH_JUMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"jump found @%zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"fw %s: bad section #%zu, end (@%zu) beyond EOF (@%zu)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@I2400M_BM_CMD_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"fw %s: section #%zu (@%zu %zu B) failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"(i2400m %p bcf %p bcf_len %zu) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64)* @i2400m_dnload_bcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2400m_dnload_bcf(%struct.i2400m* %0, %struct.i2400m_bcf_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_bcf_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2400m_bootrom_header*, align 8
  %14 = alloca %struct.i2400m_bootrom_header, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_bcf_hdr* %1, %struct.i2400m_bcf_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %16 = call %struct.device* @i2400m_dev(%struct.i2400m* %15)
  store %struct.device* %16, %struct.device** %8, align 8
  store i64 1, i64* %12, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %19 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @d_fnstart(i32 3, %struct.device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %18, %struct.i2400m_bcf_hdr* %19, i64 %20)
  %22 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %3, %108
  %29 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %30 = bitcast %struct.i2400m_bcf_hdr* %29 to i8*
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = bitcast i8* %32 to %struct.i2400m_bootrom_header*
  store %struct.i2400m_bootrom_header* %33, %struct.i2400m_bootrom_header** %13, align 8
  %34 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %13, align 8
  %35 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @ALIGN(i32 %41, i32 4)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add i64 8, %46
  %48 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %13, align 8
  %49 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 7, %struct.device* %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45, i64 %47, i32 %51)
  %53 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %13, align 8
  %54 = call i64 @i2400m_brh_get_opcode(%struct.i2400m_bootrom_header* %53)
  %55 = load i64, i64* @I2400M_BRH_SIGNED_JUMP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %28
  %58 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %13, align 8
  %59 = call i64 @i2400m_brh_get_opcode(%struct.i2400m_bootrom_header* %58)
  %60 = load i64, i64* @I2400M_BRH_JUMP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57, %28
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i32, %struct.device*, i8*, i64, ...) @d_printf(i32 5, %struct.device* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %114

66:                                               ; preds = %57
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %67, %68
  %70 = load i64, i64* %6, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %75 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %6, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (%struct.device*, i8*, i32, i64, i64, i32, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %77, i64 %80, i32 %82)
  %84 = load i64, i64* @EINVAL, align 8
  %85 = sub i64 0, %84
  store i64 %85, i64* %7, align 8
  br label %116

86:                                               ; preds = %66
  %87 = call i32 @__i2400m_msleep(i32 20)
  %88 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %89 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %13, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* @I2400M_BM_CMD_RAW, align 4
  %92 = call i64 @i2400m_bm_cmd(%struct.i2400m* %88, %struct.i2400m_bootrom_header* %89, i64 %90, %struct.i2400m_bootrom_header* %14, i32 8, i32 %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ult i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %86
  %96 = load %struct.device*, %struct.device** %8, align 8
  %97 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %98 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 8, %102
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %7, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 (%struct.device*, i8*, i32, i64, i64, i32, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %99, i64 %100, i64 %101, i32 %104, i32 %106)
  br label %117

108:                                              ; preds = %86
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %28

114:                                              ; preds = %62
  %115 = load i64, i64* %9, align 8
  store i64 %115, i64* %7, align 8
  br label %116

116:                                              ; preds = %114, %72
  br label %117

117:                                              ; preds = %116, %95
  %118 = load %struct.device*, %struct.device** %8, align 8
  %119 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %120 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @d_fnend(i32 3, %struct.device* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), %struct.i2400m* %119, %struct.i2400m_bcf_hdr* %120, i64 %121, i32 %123)
  %125 = load i64, i64* %7, align 8
  ret i64 %125
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bcf_hdr*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, ...) #1

declare dso_local i64 @i2400m_brh_get_opcode(%struct.i2400m_bootrom_header*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, i64, i32, ...) #1

declare dso_local i32 @__i2400m_msleep(i32) #1

declare dso_local i64 @i2400m_bm_cmd(%struct.i2400m*, %struct.i2400m_bootrom_header*, i64, %struct.i2400m_bootrom_header*, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
