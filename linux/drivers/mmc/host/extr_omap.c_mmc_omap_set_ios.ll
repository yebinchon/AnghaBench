; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i32 }
%struct.mmc_omap_slot = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.mmc_omap_host* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.mmc_omap_host = type { i32 }

@CON = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mmc_omap_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmc_omap_slot*, align 8
  %6 = alloca %struct.mmc_omap_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host* %12)
  store %struct.mmc_omap_slot* %13, %struct.mmc_omap_slot** %5, align 8
  %14 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %14, i32 0, i32 6
  %16 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %15, align 8
  store %struct.mmc_omap_host* %16, %struct.mmc_omap_host** %6, align 8
  %17 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %18 = call i32 @mmc_omap_select_slot(%struct.mmc_omap_slot* %17, i32 0)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %21 = call i32 @mmc_omap_calc_divisor(%struct.mmc_host* %19, %struct.mmc_ios* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %67 [
    i32 130, label %39
    i32 128, label %45
    i32 129, label %56
  ]

39:                                               ; preds = %35
  %40 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %41 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @mmc_omap_set_power(%struct.mmc_omap_slot* %40, i32 0, i64 %43)
  br label %67

45:                                               ; preds = %35
  %46 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %47 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @mmc_omap_set_power(%struct.mmc_omap_slot* %46, i32 1, i64 %49)
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %156

56:                                               ; preds = %35
  %57 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %58 = call i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host* %57, i32 1)
  store i32 1, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 2048
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 129
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %56
  br label %67

67:                                               ; preds = %35, %66, %39
  %68 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %72 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %77 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %67
  %81 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %82 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %84, align 8
  %86 = icmp ne i32 (i32, i32, i32)* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %89 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %88, i32 0, i32 5
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %91, align 8
  %93 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %94 = call i32 @mmc_dev(%struct.mmc_host* %93)
  %95 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %92(i32 %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %87, %80
  %103 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %107 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %67
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %117, %108
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %114 = load i32, i32* @CON, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %109

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %120
  store i32 250, i32* %11, align 4
  %127 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %128 = load i32, i32* @IE, align 4
  %129 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %127, i32 %128, i32 0)
  %130 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %131 = load i32, i32* @STAT, align 4
  %132 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %130, i32 %131, i32 65535)
  %133 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %134 = load i32, i32* @CMD, align 4
  %135 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %133, i32 %134, i32 128)
  br label %136

136:                                              ; preds = %147, %126
  %137 = load i32, i32* %11, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %141 = load i32, i32* @STAT, align 4
  %142 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %140, i32 %141)
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br label %145

145:                                              ; preds = %139, %136
  %146 = phi i1 [ false, %136 ], [ %144, %139 ]
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = call i32 @udelay(i32 1)
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %11, align 4
  br label %136

151:                                              ; preds = %145
  %152 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %153 = load i32, i32* @STAT, align 4
  %154 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %152, i32 %153, i32 1)
  br label %155

155:                                              ; preds = %151, %120
  br label %156

156:                                              ; preds = %155, %45
  %157 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @mmc_omap_release_slot(%struct.mmc_omap_slot* %157, i32 %158)
  ret void
}

declare dso_local %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_omap_select_slot(%struct.mmc_omap_slot*, i32) #1

declare dso_local i32 @mmc_omap_calc_divisor(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @mmc_omap_set_power(%struct.mmc_omap_slot*, i32, i64) #1

declare dso_local i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mmc_omap_release_slot(%struct.mmc_omap_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
