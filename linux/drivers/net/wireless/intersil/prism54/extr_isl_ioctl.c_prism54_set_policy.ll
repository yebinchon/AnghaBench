; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64, %struct.islpci_acl }
%struct.islpci_acl = type { i64 }

@MAC_POLICY_OPEN = common dso_local global i64 0, align 8
@MAC_POLICY_REJECT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@DOT11_MLME_INTERMEDIATE = common dso_local global i32 0, align 4
@CARD_DEFAULT_MLME_MODE = common dso_local global i32 0, align 4
@DOT11_MLME_EXTENDED = common dso_local global i32 0, align 4
@DOT11_OID_MLMEAUTOLEVEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i64*, i8*)* @prism54_set_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_policy(%struct.net_device* %0, %struct.iw_request_info* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.islpci_acl*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store %struct.islpci_acl* %16, %struct.islpci_acl** %11, align 8
  %17 = load %struct.islpci_acl*, %struct.islpci_acl** %11, align 8
  %18 = call i32 @prism54_clear_mac(%struct.islpci_acl* %17)
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAC_POLICY_OPEN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC_POLICY_REJECT, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %78

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @down_write(i32* %33)
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.islpci_acl*, %struct.islpci_acl** %11, align 8
  %38 = getelementptr inbounds %struct.islpci_acl, %struct.islpci_acl* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IW_MODE_MASTER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.islpci_acl*, %struct.islpci_acl** %11, align 8
  %46 = getelementptr inbounds %struct.islpci_acl, %struct.islpci_acl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAC_POLICY_OPEN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @DOT11_MLME_INTERMEDIATE, align 4
  store i32 %51, i32* %12, align 4
  br label %54

52:                                               ; preds = %44, %31
  %53 = load i32, i32* @CARD_DEFAULT_MLME_MODE, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @DOT11_MLME_EXTENDED, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %63 = load i32, i32* @DOT11_OID_MLMEAUTOLEVEL, align 4
  %64 = call i32 @mgt_set(%struct.TYPE_5__* %62, i32 %63, i32* %12)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = call i64 @mgt_commit(%struct.TYPE_5__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i32 @up_write(i32* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %61
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = call i32 @up_write(i32* %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %68, %28
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @prism54_clear_mac(%struct.islpci_acl*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mgt_set(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @mgt_commit(%struct.TYPE_5__*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
