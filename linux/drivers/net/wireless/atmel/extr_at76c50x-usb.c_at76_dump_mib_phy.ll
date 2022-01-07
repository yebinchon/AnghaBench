; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_dump_mib_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_dump_mib_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mib_phy = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIB_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"at76_get_mib (PHY) failed: %d\0A\00", align 1
@DBG_MIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [244 x i8] c"%s: MIB PHY: ed_threshold %d slot_time %d sifs_time %d preamble_length %d plcp_header_length %d mpdu_max_length %d cca_mode_supported %d operation_rate_set 0x%x 0x%x 0x%x 0x%x channel_id %d current_cca_mode %d phy_type %d current_reg_domain %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at76_priv*)* @at76_dump_mib_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_dump_mib_phy(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mib_phy*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mib_phy* @kmalloc(i32 56, i32 %5)
  store %struct.mib_phy* %6, %struct.mib_phy** %4, align 8
  %7 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %8 = icmp ne %struct.mib_phy* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %99

10:                                               ; preds = %1
  %11 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %12 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MIB_PHY, align 4
  %15 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %16 = call i32 @at76_get_mib(i32 %13, i32 %14, %struct.mib_phy* %15, i32 56)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %21 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @wiphy_err(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %96

27:                                               ; preds = %10
  %28 = load i32, i32* @DBG_MIB, align 4
  %29 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wiphy_name(i32 %33)
  %35 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %36 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %40 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %44 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %48 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %52 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %56 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %60 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %64 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %69 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %74 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %79 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %84 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %87 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %90 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %93 = getelementptr inbounds %struct.mib_phy, %struct.mib_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @at76_dbg(i32 %28, i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %62, i32 %67, i32 %72, i32 %77, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %27, %19
  %97 = load %struct.mib_phy*, %struct.mib_phy** %4, align 8
  %98 = call i32 @kfree(%struct.mib_phy* %97)
  br label %99

99:                                               ; preds = %96, %9
  ret void
}

declare dso_local %struct.mib_phy* @kmalloc(i32, i32) #1

declare dso_local i32 @at76_get_mib(i32, i32, %struct.mib_phy*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.mib_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
