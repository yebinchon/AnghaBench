; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.igc_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.igc_hw = type { i32 }

@IGC_EIAM = common dso_local global i32 0, align 4
@IGC_EIMC = common dso_local global i32 0, align 4
@IGC_EIAC = common dso_local global i32 0, align 4
@IGC_IAM = common dso_local global i32 0, align 4
@IGC_IMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_irq_disable(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %7 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %7, i32 0, i32 4
  store %struct.igc_hw* %8, %struct.igc_hw** %3, align 8
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load i32, i32* @IGC_EIAM, align 4
  %15 = call i32 @rd32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @IGC_EIAM, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = call i32 @wr32(i32 %16, i32 %22)
  %24 = load i32, i32* @IGC_EIMC, align 4
  %25 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wr32(i32 %24, i32 %27)
  %29 = load i32, i32* @IGC_EIAC, align 4
  %30 = call i32 @rd32(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @IGC_EIAC, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = call i32 @wr32(i32 %31, i32 %37)
  br label %39

39:                                               ; preds = %13, %1
  %40 = load i32, i32* @IGC_IAM, align 4
  %41 = call i32 @wr32(i32 %40, i32 0)
  %42 = load i32, i32* @IGC_IMC, align 4
  %43 = call i32 @wr32(i32 %42, i32 -1)
  %44 = call i32 (...) @wrfl()
  %45 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %81

49:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  %50 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @synchronize_irq(i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %77, %49
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @synchronize_irq(i32 %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %60

80:                                               ; preds = %60
  br label %88

81:                                               ; preds = %39
  %82 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @synchronize_irq(i32 %86)
  br label %88

88:                                               ; preds = %81, %80
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
