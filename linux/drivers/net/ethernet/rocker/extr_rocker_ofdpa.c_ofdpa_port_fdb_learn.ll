; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fdb_learn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fdb_learn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_fdb_learn_work = type { i32, i32, i32, i32, %struct.ofdpa_port* }

@ROCKER_OF_DPA_TABLE_ID_ACL_POLICY = common dso_local global i32 0, align 4
@ROCKER_GROUP_NONE = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_REFRESH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ofdpa_port_fdb_learn_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32*, i32)* @ofdpa_port_fdb_learn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_fdb_learn(%struct.ofdpa_port* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ofdpa_fdb_learn_work*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_ACL_POLICY, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %19 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* @ROCKER_GROUP_NONE, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %23 = call i64 @ofdpa_port_is_bridged(%struct.ofdpa_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ROCKER_GROUP_L2_INTERFACE(i32 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OFDPA_OP_FLAG_REFRESH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @ofdpa_flow_tbl_bridge(%struct.ofdpa_port* %35, i32 %36, i32* %37, i32* null, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %5, align 4
  br label %86

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %51 = call i64 @ofdpa_port_is_bridged(%struct.ofdpa_port* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %86

54:                                               ; preds = %49
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.ofdpa_fdb_learn_work* @kzalloc(i32 24, i32 %55)
  store %struct.ofdpa_fdb_learn_work* %56, %struct.ofdpa_fdb_learn_work** %10, align 8
  %57 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %58 = icmp ne %struct.ofdpa_fdb_learn_work* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %86

62:                                               ; preds = %54
  %63 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %64 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, %struct.ofdpa_fdb_learn_work* %63, i32 0, i32 1
  %65 = load i32, i32* @ofdpa_port_fdb_learn_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %68 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %69 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, %struct.ofdpa_fdb_learn_work* %68, i32 0, i32 4
  store %struct.ofdpa_port* %67, %struct.ofdpa_port** %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %72 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, %struct.ofdpa_fdb_learn_work* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %74 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, %struct.ofdpa_fdb_learn_work* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @ether_addr_copy(i32 %75, i32* %76)
  %78 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @ofdpa_port_vlan_to_vid(%struct.ofdpa_port* %78, i32 %79)
  %81 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %82 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, %struct.ofdpa_fdb_learn_work* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ofdpa_fdb_learn_work*, %struct.ofdpa_fdb_learn_work** %10, align 8
  %84 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, %struct.ofdpa_fdb_learn_work* %83, i32 0, i32 1
  %85 = call i32 @schedule_work(i32* %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %62, %59, %53, %46
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @ofdpa_port_is_bridged(%struct.ofdpa_port*) #1

declare dso_local i32 @ROCKER_GROUP_L2_INTERFACE(i32, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_bridge(%struct.ofdpa_port*, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ofdpa_fdb_learn_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ofdpa_port_vlan_to_vid(%struct.ofdpa_port*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
