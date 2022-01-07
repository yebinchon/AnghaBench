; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_assign_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_assign_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.e1000_hw = type { i32 }

@IGBVF_NO_QUEUE = common dso_local global i32 0, align 4
@IVAR0 = common dso_local global i32 0, align 4
@E1000_IVAR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*, i32, i32, i32)* @igbvf_assign_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_assign_vector(%struct.igbvf_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.igbvf_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 2
  store %struct.e1000_hw* %13, %struct.e1000_hw** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IGBVF_NO_QUEUE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @IVAR0, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @array_er32(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, -16711681
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @E1000_IVAR_VALID, align 4
  %31 = or i32 %29, %30
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %43

35:                                               ; preds = %17
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, -256
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @E1000_IVAR_VALID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %35, %26
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @BIT(i32 %44)
  %46 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %45, i8** %52, align 8
  %53 = load i32, i32* @IVAR0, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @array_ew32(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IGBVF_NO_QUEUE, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @IVAR0, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @array_er32(i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 16777215
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @E1000_IVAR_VALID, align 4
  %75 = or i32 %73, %74
  %76 = shl i32 %75, 24
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %88

79:                                               ; preds = %61
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, -65281
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @E1000_IVAR_VALID, align 4
  %84 = or i32 %82, %83
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @BIT(i32 %89)
  %91 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %92 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  %98 = load i32, i32* @IVAR0, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @array_ew32(i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %88, %57
  ret void
}

declare dso_local i32 @array_er32(i32, i32) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @array_ew32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
