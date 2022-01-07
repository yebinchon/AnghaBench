; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, %struct.i2400m_bcf_hdr** }
%struct.i2400m_bcf_hdr = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"firmware %s: %zu B left at @%zx, not enough for BCF header\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"firmware %s: no usable headers found\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, i8*, i64)* @i2400m_fw_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_fw_check(%struct.i2400m* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2400m_bcf_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %21 = call %struct.device* @i2400m_dev(%struct.i2400m* %20)
  store %struct.device* %21, %struct.device** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr i8, i8* %23, i64 %24
  store i8* %25, i8** %13, align 8
  br label %26

26:                                               ; preds = %109, %3
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %113

30:                                               ; preds = %26
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  store i64 %35, i64* %16, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ule i64 %41, 8
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %46 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %17, align 8
  %50 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48, i64 %49)
  br label %113

51:                                               ; preds = %30
  %52 = load i8*, i8** %11, align 8
  %53 = bitcast i8* %52 to %struct.i2400m_bcf_hdr*
  store %struct.i2400m_bcf_hdr* %53, %struct.i2400m_bcf_hdr** %10, align 8
  %54 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %10, align 8
  %55 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  store i64 %59, i64* %18, align 8
  %60 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %10, align 8
  %61 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  store i64 %65, i64* %19, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load i8*, i8** %11, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr i8, i8* %69, i64 %70
  store i8* %71, i8** %12, align 8
  br label %76

72:                                               ; preds = %51
  %73 = load i8*, i8** %11, align 8
  %74 = load i64, i64* %18, align 8
  %75 = getelementptr i8, i8* %73, i64 %74
  store i8* %75, i8** %12, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %78 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @i2400m_fw_hdr_check(%struct.i2400m* %77, %struct.i2400m_bcf_hdr* %78, i64 %79, i64 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %109

85:                                               ; preds = %76
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, 1
  %88 = load i64, i64* %14, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %92 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %91, i32 0, i32 1
  %93 = bitcast %struct.i2400m_bcf_hdr*** %92 to i8**
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32 @i2400m_zrealloc_2x(i8** %93, i64* %14, i32 8, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %126

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %85
  %101 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %10, align 8
  %102 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %103 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %102, i32 0, i32 1
  %104 = load %struct.i2400m_bcf_hdr**, %struct.i2400m_bcf_hdr*** %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %104, i64 %105
  store %struct.i2400m_bcf_hdr* %101, %struct.i2400m_bcf_hdr** %106, align 8
  %107 = load i64, i64* %15, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %15, align 8
  br label %109

109:                                              ; preds = %100, %84
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %11, align 8
  br label %26

113:                                              ; preds = %43, %26
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.device*, %struct.device** %8, align 8
  %118 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %119 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EBADF, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %125

124:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %116
  br label %126

126:                                              ; preds = %125, %98
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @i2400m_fw_hdr_check(%struct.i2400m*, %struct.i2400m_bcf_hdr*, i64, i64) #1

declare dso_local i32 @i2400m_zrealloc_2x(i8**, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
