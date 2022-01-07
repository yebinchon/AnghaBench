; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_image_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_image_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Image is too short [%08x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_NVM_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Wrong signature '%08x'\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Size mismatch: internal = %08x image = %08x\0A\00", align 1
@QED_NVM_FLASH_CMD_NVM_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"File contains unsupported commands [Need %04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.firmware*, i32**)* @qed_nvm_flash_image_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvm_flash_image_validate(%struct.qed_dev* %0, %struct.firmware* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.firmware*, %struct.firmware** %6, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %16 = load %struct.firmware*, %struct.firmware** %6, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %84

23:                                               ; preds = %3
  %24 = load i32**, i32*** %7, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @QED_NVM_SIGNATURE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %84

37:                                               ; preds = %23
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32* %40, i32** %38, align 8
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.firmware*, %struct.firmware** %6, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %37
  %52 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.firmware*, %struct.firmware** %6, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %84

61:                                               ; preds = %37
  %62 = load i32**, i32*** %7, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %62, align 8
  %65 = load i32**, i32*** %7, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @QED_NVM_FLASH_CMD_NVM_MAX, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %73 = load i32**, i32*** %7, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %61
  %81 = load i32**, i32*** %7, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32* %83, i32** %81, align 8
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %71, %51, %31, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
