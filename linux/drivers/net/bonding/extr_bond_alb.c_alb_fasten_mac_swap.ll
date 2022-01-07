; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_fasten_mac_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_fasten_mac_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*, %struct.slave*)* @alb_fasten_mac_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alb_fasten_mac_swap(%struct.bonding* %0, %struct.slave* %1, %struct.slave* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store %struct.slave* %2, %struct.slave** %6, align 8
  %9 = load %struct.slave*, %struct.slave** %5, align 8
  %10 = call i64 @bond_slave_can_tx(%struct.slave* %9)
  %11 = load %struct.slave*, %struct.slave** %6, align 8
  %12 = call i64 @bond_slave_can_tx(%struct.slave* %11)
  %13 = icmp ne i64 %10, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  store %struct.slave* null, %struct.slave** %8, align 8
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.slave*, %struct.slave** %5, align 8
  %17 = call i64 @bond_slave_can_tx(%struct.slave* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.slave*, %struct.slave** %5, align 8
  %21 = load %struct.slave*, %struct.slave** %5, align 8
  %22 = getelementptr inbounds %struct.slave, %struct.slave* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @alb_send_learning_packets(%struct.slave* %20, i32 %25, i32 0)
  %27 = load %struct.bonding*, %struct.bonding** %4, align 8
  %28 = getelementptr inbounds %struct.bonding, %struct.bonding* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.bonding*, %struct.bonding** %4, align 8
  %34 = load %struct.slave*, %struct.slave** %5, align 8
  %35 = call i32 @rlb_req_update_slave_clients(%struct.bonding* %33, %struct.slave* %34)
  br label %36

36:                                               ; preds = %32, %19
  br label %39

37:                                               ; preds = %3
  %38 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %38, %struct.slave** %8, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = load %struct.slave*, %struct.slave** %6, align 8
  %41 = call i64 @bond_slave_can_tx(%struct.slave* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.slave*, %struct.slave** %6, align 8
  %45 = load %struct.slave*, %struct.slave** %6, align 8
  %46 = getelementptr inbounds %struct.slave, %struct.slave* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @alb_send_learning_packets(%struct.slave* %44, i32 %49, i32 0)
  %51 = load %struct.bonding*, %struct.bonding** %4, align 8
  %52 = getelementptr inbounds %struct.bonding, %struct.bonding* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.bonding*, %struct.bonding** %4, align 8
  %58 = load %struct.slave*, %struct.slave** %6, align 8
  %59 = call i32 @rlb_req_update_slave_clients(%struct.bonding* %57, %struct.slave* %58)
  br label %60

60:                                               ; preds = %56, %43
  br label %63

61:                                               ; preds = %39
  %62 = load %struct.slave*, %struct.slave** %6, align 8
  store %struct.slave* %62, %struct.slave** %8, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.bonding*, %struct.bonding** %4, align 8
  %65 = getelementptr inbounds %struct.bonding, %struct.bonding* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.bonding*, %struct.bonding** %4, align 8
  %74 = load %struct.slave*, %struct.slave** %8, align 8
  %75 = getelementptr inbounds %struct.slave, %struct.slave* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rlb_teach_disabled_mac_on_primary(%struct.bonding* %73, i32 %78)
  br label %80

80:                                               ; preds = %72, %69, %63
  ret void
}

declare dso_local i64 @bond_slave_can_tx(%struct.slave*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @alb_send_learning_packets(%struct.slave*, i32, i32) #1

declare dso_local i32 @rlb_req_update_slave_clients(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @rlb_teach_disabled_mac_on_primary(%struct.bonding*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
