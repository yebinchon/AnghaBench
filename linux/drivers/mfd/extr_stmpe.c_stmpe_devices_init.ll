; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_devices_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_devices_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, %struct.TYPE_3__*, %struct.stmpe_variant_info* }
%struct.TYPE_3__ = type { i32 }
%struct.stmpe_variant_info = type { i32, %struct.stmpe_variant_block* }
%struct.stmpe_variant_block = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.resource = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"platform wants blocks (%#x) not present on variant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*)* @stmpe_devices_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_devices_init(%struct.stmpe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca %struct.stmpe_variant_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stmpe_variant_block*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.stmpe* %0, %struct.stmpe** %3, align 8
  %11 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %12 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %11, i32 0, i32 2
  %13 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %12, align 8
  store %struct.stmpe_variant_info* %13, %struct.stmpe_variant_info** %4, align 8
  %14 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %15 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %98, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %4, align 8
  %24 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %101

27:                                               ; preds = %21
  %28 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %4, align 8
  %29 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %28, i32 0, i32 1
  %30 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %30, i64 %32
  store %struct.stmpe_variant_block* %33, %struct.stmpe_variant_block** %9, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %9, align 8
  %36 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %98

41:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %78, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %9, align 8
  %45 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %42
  %51 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %9, align 8
  %52 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = bitcast i32* %58 to %struct.resource*
  store %struct.resource* %59, %struct.resource** %10, align 8
  %60 = load %struct.resource*, %struct.resource** %10, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IORESOURCE_IRQ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %50
  %67 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %9, align 8
  %68 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load %struct.resource*, %struct.resource** %10, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.resource*, %struct.resource** %10, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 2
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %66, %50
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %42

81:                                               ; preds = %42
  %82 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %9, align 8
  %83 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %89 = load %struct.stmpe_variant_block*, %struct.stmpe_variant_block** %9, align 8
  %90 = getelementptr inbounds %struct.stmpe_variant_block, %struct.stmpe_variant_block* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @stmpe_add_device(%struct.stmpe* %88, %struct.TYPE_4__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %112

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %40
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %21

101:                                              ; preds = %21
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %106 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @dev_warn(i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %95
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @stmpe_add_device(%struct.stmpe*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
