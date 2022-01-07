; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_2057_rccal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_2057_rccal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@R2057_RCCAL_MASTER = common dso_local global i32 0, align 4
@R2057_RCCAL_TRC0 = common dso_local global i32 0, align 4
@R2057v7_RCCAL_MASTER = common dso_local global i32 0, align 4
@R2057_RCCAL_X1 = common dso_local global i32 0, align 4
@R2057_RCCAL_START_R1_Q1_P1 = common dso_local global i32 0, align 4
@R2057_RCCAL_DONE_OSCCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Radio 0x2057 rccal timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Radio 0x2057 rcal timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_radio_2057_rccal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_radio_2057_rccal(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6
  br label %23

23:                                               ; preds = %18, %13, %1
  %24 = phi i1 [ true, %13 ], [ true, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %31 = call i32 @b43_radio_write(%struct.b43_wldev* %29, i32 %30, i32 97)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %34 = call i32 @b43_radio_write(%struct.b43_wldev* %32, i32 %33, i32 192)
  br label %42

35:                                               ; preds = %23
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %38 = call i32 @b43_radio_write(%struct.b43_wldev* %36, i32 %37, i32 97)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %41 = call i32 @b43_radio_write(%struct.b43_wldev* %39, i32 %40, i32 233)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = load i32, i32* @R2057_RCCAL_X1, align 4
  %45 = call i32 @b43_radio_write(%struct.b43_wldev* %43, i32 %44, i32 110)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %47 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %48 = call i32 @b43_radio_write(%struct.b43_wldev* %46, i32 %47, i32 85)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %51 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %49, i32 %50, i32 2, i32 2, i32 500, i32 5000000)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @b43dbg(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %42
  %59 = call i32 @usleep_range(i32 35, i32 70)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %62 = call i32 @b43_radio_write(%struct.b43_wldev* %60, i32 %61, i32 21)
  %63 = call i32 @usleep_range(i32 70, i32 140)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %69 = call i32 @b43_radio_write(%struct.b43_wldev* %67, i32 %68, i32 105)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %72 = call i32 @b43_radio_write(%struct.b43_wldev* %70, i32 %71, i32 176)
  br label %80

73:                                               ; preds = %58
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %76 = call i32 @b43_radio_write(%struct.b43_wldev* %74, i32 %75, i32 105)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %79 = call i32 @b43_radio_write(%struct.b43_wldev* %77, i32 %78, i32 213)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = load i32, i32* @R2057_RCCAL_X1, align 4
  %83 = call i32 @b43_radio_write(%struct.b43_wldev* %81, i32 %82, i32 110)
  %84 = call i32 @usleep_range(i32 35, i32 70)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %87 = call i32 @b43_radio_write(%struct.b43_wldev* %85, i32 %86, i32 85)
  %88 = call i32 @usleep_range(i32 70, i32 140)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %91 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %89, i32 %90, i32 2, i32 2, i32 500, i32 5000000)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %80
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @b43dbg(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %80
  %99 = call i32 @usleep_range(i32 35, i32 70)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %102 = call i32 @b43_radio_write(%struct.b43_wldev* %100, i32 %101, i32 21)
  %103 = call i32 @usleep_range(i32 70, i32 140)
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %109 = call i32 @b43_radio_write(%struct.b43_wldev* %107, i32 %108, i32 115)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %111 = load i32, i32* @R2057_RCCAL_X1, align 4
  %112 = call i32 @b43_radio_write(%struct.b43_wldev* %110, i32 %111, i32 40)
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %114 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %115 = call i32 @b43_radio_write(%struct.b43_wldev* %113, i32 %114, i32 176)
  br label %126

116:                                              ; preds = %98
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %118 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %119 = call i32 @b43_radio_write(%struct.b43_wldev* %117, i32 %118, i32 115)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %121 = load i32, i32* @R2057_RCCAL_X1, align 4
  %122 = call i32 @b43_radio_write(%struct.b43_wldev* %120, i32 %121, i32 110)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %125 = call i32 @b43_radio_write(%struct.b43_wldev* %123, i32 %124, i32 153)
  br label %126

126:                                              ; preds = %116, %106
  %127 = call i32 @usleep_range(i32 35, i32 70)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %130 = call i32 @b43_radio_write(%struct.b43_wldev* %128, i32 %129, i32 85)
  %131 = call i32 @usleep_range(i32 70, i32 140)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %133 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %134 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %132, i32 %133, i32 2, i32 2, i32 500, i32 5000000)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %126
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %138 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @b43err(i32 %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %162

141:                                              ; preds = %126
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %143 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %144 = call i32 @b43_radio_read(%struct.b43_wldev* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = call i32 @usleep_range(i32 35, i32 70)
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %147 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %148 = call i32 @b43_radio_write(%struct.b43_wldev* %146, i32 %147, i32 21)
  %149 = call i32 @usleep_range(i32 70, i32 140)
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %154 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %155 = call i32 @b43_radio_mask(%struct.b43_wldev* %153, i32 %154, i32 -2)
  br label %160

156:                                              ; preds = %141
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %158 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %159 = call i32 @b43_radio_mask(%struct.b43_wldev* %157, i32 %158, i32 -2)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %136
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
