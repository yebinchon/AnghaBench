; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_hdr_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_hdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_bcf_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [90 x i8] c"firmware %s #%zd@%08zx: BCF header type:vendor:id 0x%x:%x:%x v%u.%u (%u/%u B) built %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"firmware %s #%zd@%08zx: major header version v%u.%u not supported\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"firmware %s #%zd@%08zx: unexpected module type 0x%x; aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"firmware %s #%zd@%08zx: unexpected module vendor 0x%x; aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"firmware %s #%zd@%08zx: build date %08x too old; unsupported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i64)* @i2400m_fw_hdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_fw_hdr_check(%struct.i2400m* %0, %struct.i2400m_bcf_hdr* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca %struct.i2400m_bcf_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store %struct.i2400m_bcf_hdr* %1, %struct.i2400m_bcf_hdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %20 = call %struct.device* @i2400m_dev(%struct.i2400m* %19)
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = and i32 %35, -65536
  %37 = lshr i32 %36, 16
  store i32 %37, i32* %13, align 4
  %38 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = and i32 %41, 65535
  store i32 %42, i32* %14, align 4
  %43 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %64 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @d_printf(i32 1, %struct.device* %62, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %66, i64 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %91

79:                                               ; preds = %4
  %80 = load %struct.device*, %struct.device** %10, align 8
  %81 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %82 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 (%struct.device*, i8*, i32, i64, i64, i32, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84, i64 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @EBADF, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %132

91:                                               ; preds = %4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 6
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.device*, %struct.device** %10, align 8
  %96 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %97 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (%struct.device*, i8*, i32, i64, i64, i32, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %98, i64 %99, i64 %100, i32 %101)
  %103 = load i32, i32* @EBADF, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %132

105:                                              ; preds = %91
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 32902
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %10, align 8
  %110 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %111 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 (%struct.device*, i8*, i32, i64, i64, i32, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %112, i64 %113, i64 %114, i32 %115)
  %117 = load i32, i32* @EBADF, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %132

119:                                              ; preds = %105
  %120 = load i32, i32* %17, align 4
  %121 = icmp ult i32 %120, 537395968
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.device*, %struct.device** %10, align 8
  %124 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %125 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @dev_warn(%struct.device* %123, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %126, i64 %127, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %119
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %108, %94, %79
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, i64, i32, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
