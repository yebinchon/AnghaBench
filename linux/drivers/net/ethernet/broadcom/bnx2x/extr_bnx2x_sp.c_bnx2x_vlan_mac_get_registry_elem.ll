; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_get_registry_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_get_registry_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)*, i32 (%struct.bnx2x_vlan_mac_obj*, i32*)* }
%struct.bnx2x_vlan_mac_registry_elem = type { i32, i32, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_exeq_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Got cam offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_exeq_elem*, i32, %struct.bnx2x_vlan_mac_registry_elem**)* @bnx2x_vlan_mac_get_registry_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vlan_mac_get_registry_elem(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_exeq_elem* %2, i32 %3, %struct.bnx2x_vlan_mac_registry_elem** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %9 = alloca %struct.bnx2x_exeq_elem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_vlan_mac_registry_elem**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bnx2x_vlan_mac_registry_elem*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %8, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.bnx2x_vlan_mac_registry_elem** %4, %struct.bnx2x_vlan_mac_registry_elem*** %11, align 8
  %14 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %9, align 8
  %15 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.bnx2x_vlan_mac_registry_elem* @kzalloc(i32 12, i32 %30)
  store %struct.bnx2x_vlan_mac_registry_elem* %31, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %32 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %33 = icmp ne %struct.bnx2x_vlan_mac_registry_elem* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %87

37:                                               ; preds = %29
  %38 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %39 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %38, i32 0, i32 1
  %40 = load i32 (%struct.bnx2x_vlan_mac_obj*, i32*)*, i32 (%struct.bnx2x_vlan_mac_obj*, i32*)** %39, align 8
  %41 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %42 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %43 = getelementptr inbounds %struct.bnx2x_vlan_mac_registry_elem, %struct.bnx2x_vlan_mac_registry_elem* %42, i32 0, i32 2
  %44 = call i32 %40(%struct.bnx2x_vlan_mac_obj* %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = call i32 @WARN_ON(i32 1)
  %48 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %49 = call i32 @kfree(%struct.bnx2x_vlan_mac_registry_elem* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %87

52:                                               ; preds = %37
  %53 = load i32, i32* @BNX2X_MSG_SP, align 4
  %54 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %55 = getelementptr inbounds %struct.bnx2x_vlan_mac_registry_elem, %struct.bnx2x_vlan_mac_registry_elem* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DP(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %59 = getelementptr inbounds %struct.bnx2x_vlan_mac_registry_elem, %struct.bnx2x_vlan_mac_registry_elem* %58, i32 0, i32 1
  %60 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %9, align 8
  %61 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i32 @memcpy(i32* %59, i32* %63, i32 4)
  %65 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %9, align 8
  %66 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %71 = getelementptr inbounds %struct.bnx2x_vlan_mac_registry_elem, %struct.bnx2x_vlan_mac_registry_elem* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %84

72:                                               ; preds = %25, %5
  %73 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %74 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %73, i32 0, i32 0
  %75 = load %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)*, %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)** %74, align 8
  %76 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %77 = bitcast %struct.bnx2x* %76 to %struct.bnx2x.0*
  %78 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %79 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %9, align 8
  %80 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = call %struct.bnx2x_vlan_mac_registry_elem* %75(%struct.bnx2x.0* %77, %struct.bnx2x_vlan_mac_obj* %78, i32* %82)
  store %struct.bnx2x_vlan_mac_registry_elem* %83, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  br label %84

84:                                               ; preds = %72, %52
  %85 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %13, align 8
  %86 = load %struct.bnx2x_vlan_mac_registry_elem**, %struct.bnx2x_vlan_mac_registry_elem*** %11, align 8
  store %struct.bnx2x_vlan_mac_registry_elem* %85, %struct.bnx2x_vlan_mac_registry_elem** %86, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %46, %34
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.bnx2x_vlan_mac_registry_elem* @kzalloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.bnx2x_vlan_mac_registry_elem*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
