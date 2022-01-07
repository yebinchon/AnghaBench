; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_log_sfp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_log_sfp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Port %c: %s Vendor: %s part no: %s\00", align 1
@be_misconfig_evt_port_state = common dso_local global i32* null, align 8
@BE_FLAGS_PHY_MISCONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_log_sfp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_log_sfp_info(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %4 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %5 = call i32 @be_cmd_query_sfp_info(%struct.be_adapter* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @be_misconfig_evt_port_state, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %8, %1
  %32 = load i32, i32* @BE_FLAGS_PHY_MISCONFIGURED, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  ret void
}

declare dso_local i32 @be_cmd_query_sfp_info(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
