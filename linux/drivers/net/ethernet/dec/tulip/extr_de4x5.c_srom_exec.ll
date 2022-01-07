; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DC21140 = common dso_local global i64 0, align 8
@RESET_SIA = common dso_local global i32 0, align 4
@DE4X5_STRR = common dso_local global i32 0, align 4
@DE4X5_SICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @srom_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srom_exec(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de4x5_private* %10, %struct.de4x5_private** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %17, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %8, align 8
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %30 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %35 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 5
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28, %21
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %33
  br label %99

42:                                               ; preds = %38
  %43 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %44 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DC21140, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @RESET_SIA, align 4
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %57 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DC21140, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %63 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 5
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %4, align 8
  %69 = load i32, i32* %67, align 4
  br label %75

70:                                               ; preds = %61, %55
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = ptrtoint i32* %71 to i32
  %74 = call i32 @get_unaligned_le16(i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %69, %66 ], [ %74, %70 ]
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i32 @gep_wr(i32 %76, %struct.net_device* %77)
  %79 = call i32 @mdelay(i32 2)
  br label %51

80:                                               ; preds = %51
  %81 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %82 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DC21140, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %88 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DE4X5_STRR, align 4
  %92 = call i32 @outl(i32 %90, i32 %91)
  %93 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %94 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DE4X5_SICR, align 4
  %98 = call i32 @outl(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %41, %86, %80
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gep_wr(i32, %struct.net_device*) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
