; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_prio_check_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_prio_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.nfp_abm*, %struct.nfp_net* }
%struct.nfp_abm = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfp_net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NFP_NET_ABM_MBOX_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"vNIC mailbox too small for prio offload: %u, need: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*)* @nfp_abm_ctrl_prio_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_ctrl_prio_check_params(%struct.nfp_abm_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_abm_link*, align 8
  %4 = alloca %struct.nfp_abm*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %3, align 8
  %7 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %7, i32 0, i32 0
  %9 = load %struct.nfp_abm*, %struct.nfp_abm** %8, align 8
  store %struct.nfp_abm* %9, %struct.nfp_abm** %4, align 8
  %10 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %10, i32 0, i32 1
  %12 = load %struct.nfp_net*, %struct.nfp_net** %11, align 8
  store %struct.nfp_net* %12, %struct.nfp_net** %5, align 8
  %13 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %13, i32 0, i32 0
  %15 = load %struct.nfp_abm*, %struct.nfp_abm** %14, align 8
  %16 = call i32 @nfp_abm_has_prio(%struct.nfp_abm* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load i32, i32* @NFP_NET_ABM_MBOX_DATA, align 4
  %21 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %21, i32 0, i32 0
  %23 = load %struct.nfp_abm*, %struct.nfp_abm** %22, align 8
  %24 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %20, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %19
  %34 = load %struct.nfp_abm*, %struct.nfp_abm** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %42 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @nfp_err(i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %33, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @nfp_abm_has_prio(%struct.nfp_abm*) #1

declare dso_local i32 @nfp_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
