; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_collect_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_collect_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fec_enet_private = type { i32, i32 }

@FEC_ENET_RXF_0 = common dso_local global i32 0, align 4
@FEC_ENET_RXF_1 = common dso_local global i32 0, align 4
@FEC_ENET_RXF_2 = common dso_local global i32 0, align 4
@FEC_ENET_TXF_0 = common dso_local global i32 0, align 4
@FEC_ENET_TXF_1 = common dso_local global i32 0, align 4
@FEC_ENET_TXF_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fec_enet_private*, i32)* @fec_enet_collect_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_collect_events(%struct.fec_enet_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i32, align 4
  store %struct.fec_enet_private* %0, %struct.fec_enet_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FEC_ENET_RXF_0, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 4
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FEC_ENET_RXF_1, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %26 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FEC_ENET_RXF_2, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @FEC_ENET_TXF_0, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %46 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 4
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FEC_ENET_TXF_1, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %56 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @FEC_ENET_TXF_2, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %66 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 2
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %59
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %8
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
