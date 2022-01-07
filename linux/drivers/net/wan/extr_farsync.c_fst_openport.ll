; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_openport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_openport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_port_info = type { i32, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FST_RUNNING = common dso_local global i64 0, align 8
@DBG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"open: found port already running\0A\00", align 1
@STOPPORT = common dso_local global i32 0, align 4
@OPSTS_RTS = common dso_local global i32 0, align 4
@OPSTS_DTR = common dso_local global i32 0, align 4
@STARTPORT = common dso_local global i32 0, align 4
@v24DebouncedSts = common dso_local global i32* null, align 8
@X21 = common dso_local global i64 0, align 8
@X21D = common dso_local global i64 0, align 8
@IPSTS_INDICATE = common dso_local global i32 0, align 4
@IPSTS_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_port_info*)* @fst_openport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_openport(%struct.fst_port_info* %0) #0 {
  %2 = alloca %struct.fst_port_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fst_port_info* %0, %struct.fst_port_info** %2, align 8
  %4 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %5 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %4, i32 0, i32 5
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FST_RUNNING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %82

11:                                               ; preds = %1
  %12 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %13 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* @DBG_OPEN, align 4
  %18 = call i32 @dbg(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %20 = load i32, i32* @STOPPORT, align 4
  %21 = call i32 @fst_issue_cmd(%struct.fst_port_info* %19, i32 %20)
  %22 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %23 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %16, %11
  %25 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %26 = call i32 @fst_rx_config(%struct.fst_port_info* %25)
  %27 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %28 = call i32 @fst_tx_config(%struct.fst_port_info* %27)
  %29 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %30 = load i32, i32* @OPSTS_RTS, align 4
  %31 = load i32, i32* @OPSTS_DTR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @fst_op_raise(%struct.fst_port_info* %29, i32 %32)
  %34 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %35 = load i32, i32* @STARTPORT, align 4
  %36 = call i32 @fst_issue_cmd(%struct.fst_port_info* %34, i32 %35)
  %37 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %38 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %40 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32*, i32** @v24DebouncedSts, align 8
  %43 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %44 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FST_RDL(%struct.TYPE_2__* %41, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %51 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @X21, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %24
  %56 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %57 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @X21D, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %24
  %62 = load i32, i32* @IPSTS_INDICATE, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @IPSTS_DCD, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = and i32 %49, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %71 = call i32 @port_to_dev(%struct.fst_port_info* %70)
  %72 = call i32 @netif_carrier_on(i32 %71)
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %75 = call i32 @port_to_dev(%struct.fst_port_info* %74)
  %76 = call i32 @netif_carrier_off(i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %79 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %81 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %1
  ret void
}

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @fst_issue_cmd(%struct.fst_port_info*, i32) #1

declare dso_local i32 @fst_rx_config(%struct.fst_port_info*) #1

declare dso_local i32 @fst_tx_config(%struct.fst_port_info*) #1

declare dso_local i32 @fst_op_raise(%struct.fst_port_info*, i32) #1

declare dso_local i32 @FST_RDL(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
