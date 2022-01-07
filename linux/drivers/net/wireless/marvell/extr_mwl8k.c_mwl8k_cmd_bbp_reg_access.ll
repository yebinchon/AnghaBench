; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_bbp_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_bbp_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_bbp_reg_access = type { i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_BBP_REG_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32, i32*)* @mwl8k_cmd_bbp_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_bbp_reg_access(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mwl8k_cmd_bbp_reg_access*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mwl8k_cmd_bbp_reg_access* @kzalloc(i32 40, i32 %12)
  store %struct.mwl8k_cmd_bbp_reg_access* %13, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %14 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %15 = icmp eq %struct.mwl8k_cmd_bbp_reg_access* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load i32, i32* @MWL8K_CMD_BBP_REG_ACCESS, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_bbp_reg_access, %struct.mwl8k_cmd_bbp_reg_access* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 40)
  %26 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_bbp_reg_access, %struct.mwl8k_cmd_bbp_reg_access* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_bbp_reg_access, %struct.mwl8k_cmd_bbp_reg_access* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %36 = getelementptr inbounds %struct.mwl8k_cmd_bbp_reg_access, %struct.mwl8k_cmd_bbp_reg_access* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %38 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %39 = getelementptr inbounds %struct.mwl8k_cmd_bbp_reg_access, %struct.mwl8k_cmd_bbp_reg_access* %38, i32 0, i32 1
  %40 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %19
  %44 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %45 = getelementptr inbounds %struct.mwl8k_cmd_bbp_reg_access, %struct.mwl8k_cmd_bbp_reg_access* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %50

48:                                               ; preds = %19
  %49 = load i32*, i32** %9, align 8
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load %struct.mwl8k_cmd_bbp_reg_access*, %struct.mwl8k_cmd_bbp_reg_access** %10, align 8
  %52 = call i32 @kfree(%struct.mwl8k_cmd_bbp_reg_access* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.mwl8k_cmd_bbp_reg_access* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_bbp_reg_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
