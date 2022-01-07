; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32 }
%struct.aq_nic_s = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @aq_ethtool_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %10)
  store %struct.aq_nic_s* %11, %struct.aq_nic_s** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %13 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %15, align 8
  %17 = icmp ne i32 (i32, i32*, i32*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %23 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %26 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %28, align 8
  %30 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %31 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32 %32, i32* %7, i32* %8)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %35 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %90

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @eee_mask_to_ethtool_mask(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %48 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %41
  %59 = load i32, i32* %7, align 4
  %60 = call i8* @eee_mask_to_ethtool_mask(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %58
  %87 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %87, i32 0, i32 5
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %58
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %39, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @eee_mask_to_ethtool_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
