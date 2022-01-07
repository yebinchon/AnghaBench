; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ndfc.c_ndfc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ndfc.c_ndfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndfc_controller = type { i64, i64, %struct.platform_device*, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable read reg property (%d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NDFC_MAX_CS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid CS number (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ndfc_ctrl = common dso_local global %struct.ndfc_controller* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get memory\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ccr\00", align 1
@NDFC_CCR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"bank-settings\00", align 1
@NDFC_BCFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ndfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ndfc_controller*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @of_get_property(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 12
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %143

28:                                               ; preds = %18
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be32_to_cpu(i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @NDFC_MAX_CS, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %143

43:                                               ; preds = %28
  %44 = load %struct.ndfc_controller*, %struct.ndfc_controller** @ndfc_ctrl, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %44, i64 %45
  store %struct.ndfc_controller* %46, %struct.ndfc_controller** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %49 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %51 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %50, i32 0, i32 3
  %52 = call i32 @nand_controller_init(i32* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %54, i32 0, i32 2
  store %struct.platform_device* %53, %struct.platform_device** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %59 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %57, %struct.ndfc_controller* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @of_iomap(i32 %63, i32 0)
  %65 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %66 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %68 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %43
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %143

77:                                               ; preds = %43
  %78 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %79 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @NDFC_CCR_BS(i64 %80)
  store i64 %81, i64* %6, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @of_get_property(i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %86, i32** %5, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load i32*, i32** %5, align 8
  %91 = call i64 @be32_to_cpup(i32* %90)
  %92 = load i64, i64* %6, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %89, %77
  %95 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %96 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NDFC_CCR, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @out_be32(i64 %99, i64 %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @of_get_property(i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32* %106, i32** %5, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %127

109:                                              ; preds = %94
  %110 = load i32, i32* @NDFC_BCFG0, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %113 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = shl i64 %114, 2
  %116 = add i64 %111, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  %118 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %119 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load i32*, i32** %5, align 8
  %125 = call i64 @be32_to_cpup(i32* %124)
  %126 = call i32 @out_be32(i64 %123, i64 %125)
  br label %127

127:                                              ; preds = %109, %94
  %128 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ndfc_chip_init(%struct.ndfc_controller* %128, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load %struct.ndfc_controller*, %struct.ndfc_controller** %4, align 8
  %138 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @iounmap(i64 %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %2, align 4
  br label %143

142:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %136, %71, %36, %21
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @nand_controller_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, %struct.ndfc_controller*) #1

declare dso_local i64 @of_iomap(i32, i32) #1

declare dso_local i64 @NDFC_CCR_BS(i64) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @out_be32(i64, i64) #1

declare dso_local i32 @ndfc_chip_init(%struct.ndfc_controller*, i32) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
