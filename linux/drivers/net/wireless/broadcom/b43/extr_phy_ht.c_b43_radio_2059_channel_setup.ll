; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2059_channel_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2059_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b43_phy_ht_channeltab_e_radio2059 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@b43_radio_2059_channel_setup.routing = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@R2059_RFPLL_MISC_EN = common dso_local global i32 0, align 4
@R2059_RFPLL_MISC_CAL_RESETN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_phy_ht_channeltab_e_radio2059*)* @b43_radio_2059_channel_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2059_channel_setup(%struct.b43_wldev* %0, %struct.b43_phy_ht_channeltab_e_radio2059* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy_ht_channeltab_e_radio2059*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_phy_ht_channeltab_e_radio2059* %1, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %9 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %8, i32 0, i32 20
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @b43_radio_write(%struct.b43_wldev* %7, i32 22, i32 %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %14 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %13, i32 0, i32 19
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @b43_radio_write(%struct.b43_wldev* %12, i32 23, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %19 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @b43_radio_write(%struct.b43_wldev* %17, i32 34, i32 %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %24 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @b43_radio_write(%struct.b43_wldev* %22, i32 37, i32 %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %29 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @b43_radio_write(%struct.b43_wldev* %27, i32 39, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %34 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @b43_radio_write(%struct.b43_wldev* %32, i32 40, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %39 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @b43_radio_write(%struct.b43_wldev* %37, i32 41, i32 %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %44 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @b43_radio_write(%struct.b43_wldev* %42, i32 44, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %49 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @b43_radio_write(%struct.b43_wldev* %47, i32 45, i32 %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %54 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @b43_radio_write(%struct.b43_wldev* %52, i32 55, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %59 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @b43_radio_write(%struct.b43_wldev* %57, i32 65, i32 %60)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %63 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %64 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @b43_radio_write(%struct.b43_wldev* %62, i32 67, i32 %65)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %69 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @b43_radio_write(%struct.b43_wldev* %67, i32 71, i32 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %136, %2
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %139

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_radio_2059_channel_setup.routing, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, 74
  %83 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %84 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @b43_radio_write(%struct.b43_wldev* %80, i32 %82, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, 88
  %90 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %91 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @b43_radio_write(%struct.b43_wldev* %87, i32 %89, i32 %92)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, 90
  %97 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %98 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @b43_radio_write(%struct.b43_wldev* %94, i32 %96, i32 %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, 106
  %104 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %105 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @b43_radio_write(%struct.b43_wldev* %101, i32 %103, i32 %106)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, 109
  %111 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %112 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @b43_radio_write(%struct.b43_wldev* %108, i32 %110, i32 %113)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, 110
  %118 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %119 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @b43_radio_write(%struct.b43_wldev* %115, i32 %117, i32 %120)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, 146
  %125 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %126 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @b43_radio_write(%struct.b43_wldev* %122, i32 %124, i32 %127)
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, 152
  %132 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %4, align 8
  %133 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @b43_radio_write(%struct.b43_wldev* %129, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %75
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %72

139:                                              ; preds = %72
  %140 = call i32 @udelay(i32 50)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %142 = load i32, i32* @R2059_RFPLL_MISC_EN, align 4
  %143 = call i32 @b43_radio_mask(%struct.b43_wldev* %141, i32 %142, i32 -2)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %145 = load i32, i32* @R2059_RFPLL_MISC_CAL_RESETN, align 4
  %146 = call i32 @b43_radio_mask(%struct.b43_wldev* %144, i32 %145, i32 -5)
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %148 = load i32, i32* @R2059_RFPLL_MISC_CAL_RESETN, align 4
  %149 = call i32 @b43_radio_set(%struct.b43_wldev* %147, i32 %148, i32 4)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = load i32, i32* @R2059_RFPLL_MISC_EN, align 4
  %152 = call i32 @b43_radio_set(%struct.b43_wldev* %150, i32 %151, i32 1)
  %153 = call i32 @udelay(i32 300)
  ret void
}

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
