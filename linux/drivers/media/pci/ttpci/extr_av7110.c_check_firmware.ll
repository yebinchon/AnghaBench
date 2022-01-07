; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_check_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_check_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"dvb-ttpci: this is not an av7110 firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dvb-ttpci: dpram file is way too big.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"dvb-ttpci: crc32 of dpram file does not match.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"dvb-ttpci: root file has strange size (%d). aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"dvb-ttpci: crc32 of root file does not match.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*)* @check_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_firmware(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.av7110*, %struct.av7110** %3, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 65
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 86
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 70
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 87
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %21, %15, %1
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %126

37:                                               ; preds = %27
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @get_unaligned_be32(i8* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @get_unaligned_be32(i8* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 512
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %126

54:                                               ; preds = %37
  %55 = load i32, i32* %4, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @crc32_le(i32 0, i8* %56, i32 %57)
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %126

64:                                               ; preds = %54
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.av7110*, %struct.av7110** %3, align 8
  %67 = getelementptr inbounds %struct.av7110, %struct.av7110* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.av7110*, %struct.av7110** %3, align 8
  %70 = getelementptr inbounds %struct.av7110, %struct.av7110* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @get_unaligned_be32(i8* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @get_unaligned_be32(i8* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp sle i32 %83, 200000
  br i1 %84, label %104, label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %86, 300000
  br i1 %87, label %104, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.av7110*, %struct.av7110** %3, align 8
  %92 = getelementptr inbounds %struct.av7110, %struct.av7110* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.av7110*, %struct.av7110** %3, align 8
  %95 = getelementptr inbounds %struct.av7110, %struct.av7110* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = load i8*, i8** %6, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = icmp sgt i64 %90, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %88, %85, %64
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %126

109:                                              ; preds = %88
  %110 = load i32, i32* %4, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @crc32_le(i32 0, i8* %111, i32 %112)
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %126

119:                                              ; preds = %109
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.av7110*, %struct.av7110** %3, align 8
  %122 = getelementptr inbounds %struct.av7110, %struct.av7110* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.av7110*, %struct.av7110** %3, align 8
  %125 = getelementptr inbounds %struct.av7110, %struct.av7110* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %119, %115, %104, %60, %50, %33
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
