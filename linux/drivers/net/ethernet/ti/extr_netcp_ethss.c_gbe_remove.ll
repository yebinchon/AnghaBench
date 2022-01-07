; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_device = type { i32 }
%struct.gbe_priv = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"unreleased ethss interfaces present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netcp_device*, i8*)* @gbe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_remove(%struct.netcp_device* %0, i8* %1) #0 {
  %3 = alloca %struct.netcp_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gbe_priv*, align 8
  store %struct.netcp_device* %0, %struct.netcp_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gbe_priv*
  store %struct.gbe_priv* %7, %struct.gbe_priv** %5, align 8
  %8 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %9 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %8, i32 0, i32 5
  %10 = call i32 @del_timer_sync(i32* %9)
  %11 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %12 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpts_release(i32 %13)
  %15 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %16 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpsw_ale_stop(i32 %17)
  %19 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %20 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %19, i32 0, i32 2
  %21 = call i32 @netcp_txpipe_close(i32* %20)
  %22 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %23 = call i32 @free_secondary_ports(%struct.gbe_priv* %22)
  %24 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %25 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %30 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_alert(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %2
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cpts_release(i32) #1

declare dso_local i32 @cpsw_ale_stop(i32) #1

declare dso_local i32 @netcp_txpipe_close(i32*) #1

declare dso_local i32 @free_secondary_ports(%struct.gbe_priv*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_alert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
