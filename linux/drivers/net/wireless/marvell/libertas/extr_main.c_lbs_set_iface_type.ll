; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_set_iface_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_set_iface_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNMP_MIB_OID_BSS_TYPE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_iface_type(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %46 [
    i32 129, label %7
    i32 128, label %10
    i32 130, label %28
  ]

7:                                                ; preds = %2
  %8 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %9 = call i32 @lbs_set_monitor_mode(%struct.lbs_private* %8, i32 1)
  store i32 %9, i32* %5, align 4
  br label %49

10:                                               ; preds = %2
  %11 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = call i32 @lbs_set_monitor_mode(%struct.lbs_private* %18, i32 0)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = load i32, i32* @SNMP_MIB_OID_BSS_TYPE, align 4
  %26 = call i32 @lbs_set_snmp_mib(%struct.lbs_private* %24, i32 %25, i32 1)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %20
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %37 = call i32 @lbs_set_monitor_mode(%struct.lbs_private* %36, i32 0)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %43 = load i32, i32* @SNMP_MIB_OID_BSS_TYPE, align 4
  %44 = call i32 @lbs_set_snmp_mib(%struct.lbs_private* %42, i32 %43, i32 2)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %38
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %45, %27, %7
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @lbs_set_monitor_mode(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_set_snmp_mib(%struct.lbs_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
