; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_tx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhine_private = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@IntrTxAborted = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Abort %08x, frame dropped\0A\00", align 1
@IntrTxUnderrun = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Transmitter underrun, Tx threshold now %02x\0A\00", align 1
@IntrTxDescRace = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Tx descriptor write-back race\0A\00", align 1
@IntrTxError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unspecified error. Tx threshold now %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rhine_private*, i32)* @rhine_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rhine_tx_err(%struct.rhine_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rhine_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.rhine_private* %0, %struct.rhine_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %7 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IntrTxAborted, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %15 = load i32, i32* @tx_err, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.rhine_private* %14, i32 %15, %struct.net_device* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IntrTxUnderrun, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %26 = call i32 @rhine_kick_tx_threshold(%struct.rhine_private* %25)
  %27 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %28 = load i32, i32* @tx_err, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %31 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.rhine_private* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IntrTxDescRace, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %41 = load i32, i32* @tx_err, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.rhine_private* %40, i32 %41, %struct.net_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IntrTxError, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @IntrTxAborted, align 4
  %52 = load i32, i32* @IntrTxUnderrun, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IntrTxDescRace, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %60 = call i32 @rhine_kick_tx_threshold(%struct.rhine_private* %59)
  %61 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %62 = load i32, i32* @tx_err, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %65 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.rhine_private* %61, i32 %62, %struct.net_device* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %58, %49, %44
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call i32 @rhine_restart_tx(%struct.net_device* %69)
  ret void
}

declare dso_local i32 @netif_info(%struct.rhine_private*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @rhine_kick_tx_threshold(%struct.rhine_private*) #1

declare dso_local i32 @rhine_restart_tx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
