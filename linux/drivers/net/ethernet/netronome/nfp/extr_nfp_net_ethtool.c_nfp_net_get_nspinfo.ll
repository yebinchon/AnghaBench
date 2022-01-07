; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_get_nspinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_get_nspinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_nsp = type { i32 }

@ETHTOOL_FWVERS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%hu.%hu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, i8*)* @nfp_net_get_nspinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_get_nspinfo(%struct.nfp_app* %0, i8* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfp_nsp*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %7 = icmp ne %struct.nfp_app* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  %10 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nfp_nsp* @nfp_nsp_open(i32 %12)
  store %struct.nfp_nsp* %13, %struct.nfp_nsp** %5, align 8
  %14 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %15 = call i64 @IS_ERR(%struct.nfp_nsp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %28

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %21 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %22 = call i32 @nfp_nsp_get_abi_ver_major(%struct.nfp_nsp* %21)
  %23 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %24 = call i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp* %23)
  %25 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %27 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %26)
  br label %28

28:                                               ; preds = %18, %17, %8
  ret void
}

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @nfp_nsp_get_abi_ver_major(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
