; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { i32 }

@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@E1000_EIAM = common dso_local global i32 0, align 4
@E1000_EIMC = common dso_local global i32 0, align 4
@E1000_EIAC = common dso_local global i32 0, align 4
@E1000_IAM = common dso_local global i32 0, align 4
@E1000_IMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_irq_disable(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 5
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_EIAM, align 4
  %16 = call i32 @rd32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @E1000_EIAM, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = call i32 @wr32(i32 %17, i32 %23)
  %25 = load i32, i32* @E1000_EIMC, align 4
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wr32(i32 %25, i32 %28)
  %30 = load i32, i32* @E1000_EIAC, align 4
  %31 = call i32 @rd32(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @E1000_EIAC, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = call i32 @wr32(i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %14, %1
  %41 = load i32, i32* @E1000_IAM, align 4
  %42 = call i32 @wr32(i32 %41, i32 0)
  %43 = load i32, i32* @E1000_IMC, align 4
  %44 = call i32 @wr32(i32 %43, i32 -1)
  %45 = call i32 (...) @wrfl()
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %60, i32 0, i32 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @synchronize_irq(i32 %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %53

72:                                               ; preds = %53
  br label %80

73:                                               ; preds = %40
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @synchronize_irq(i32 %78)
  br label %80

80:                                               ; preds = %73, %72
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
