; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_port_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_port_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_pf = type { i32 }
%struct.nfp_eth_table_port = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)* @nfp_devlink_port_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_port_split(%struct.devlink* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_pf*, align 8
  %11 = alloca %struct.nfp_eth_table_port, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = load %struct.devlink*, %struct.devlink** %6, align 8
  %15 = call %struct.nfp_pf* @devlink_priv(%struct.devlink* %14)
  store %struct.nfp_pf* %15, %struct.nfp_pf** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load %struct.nfp_pf*, %struct.nfp_pf** %10, align 8
  %23 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = call i32 (...) @rtnl_lock()
  %26 = load %struct.nfp_pf*, %struct.nfp_pf** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @nfp_devlink_fill_eth_port_from_id(%struct.nfp_pf* %26, i32 %27, %struct.nfp_eth_table_port* %11)
  store i32 %28, i32* %13, align 4
  %29 = call i32 (...) @rtnl_unlock()
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %66

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %11, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = urem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %66

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = udiv i32 8, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %54, %46
  %61 = load %struct.nfp_pf*, %struct.nfp_pf** %10, align 8
  %62 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @nfp_devlink_set_lanes(%struct.nfp_pf* %61, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %60, %43, %32
  %67 = load %struct.nfp_pf*, %struct.nfp_pf** %10, align 8
  %68 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.nfp_pf* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nfp_devlink_fill_eth_port_from_id(%struct.nfp_pf*, i32, %struct.nfp_eth_table_port*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nfp_devlink_set_lanes(%struct.nfp_pf*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
