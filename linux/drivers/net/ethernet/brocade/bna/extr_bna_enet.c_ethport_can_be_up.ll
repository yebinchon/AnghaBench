; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_ethport_can_be_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_ethport_can_be_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@BNA_ENET_T_REGULAR = common dso_local global i64 0, align 8
@BNA_ETHPORT_F_ADMIN_UP = common dso_local global i32 0, align 4
@BNA_ETHPORT_F_RX_STARTED = common dso_local global i32 0, align 4
@BNA_ETHPORT_F_PORT_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_ethport*)* @ethport_can_be_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethport_can_be_up(%struct.bna_ethport* %0) #0 {
  %2 = alloca %struct.bna_ethport*, align 8
  %3 = alloca i32, align 4
  store %struct.bna_ethport* %0, %struct.bna_ethport** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %5 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BNA_ENET_T_REGULAR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %14 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BNA_ETHPORT_F_ADMIN_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %21 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BNA_ETHPORT_F_RX_STARTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %28 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BNA_ETHPORT_F_PORT_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %26, %19, %12
  %34 = phi i1 [ false, %19 ], [ false, %12 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %1
  %37 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %38 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BNA_ETHPORT_F_ADMIN_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %45 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BNA_ETHPORT_F_RX_STARTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %52 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BNA_ETHPORT_F_PORT_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %43, %36
  %59 = phi i1 [ false, %43 ], [ false, %36 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %33
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
