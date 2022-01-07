; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_lpphy.c_b2063_upload_init_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_lpphy.c_b2063_upload_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b206x_init_tab_entry = type { i32, i32, i32, i32 }
%struct.b43_wldev = type { i32 }

@b2063_init_tab = common dso_local global %struct.b206x_init_tab_entry* null, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B206X_FLAG_G = common dso_local global i32 0, align 4
@B206X_FLAG_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2063_upload_init_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b206x_init_tab_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** @b2063_init_tab, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.b206x_init_tab_entry* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %5
  %11 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** @b2063_init_tab, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %11, i64 %13
  store %struct.b206x_init_tab_entry* %14, %struct.b206x_init_tab_entry** %3, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @b43_current_band(i32 %17)
  %19 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %10
  %22 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** %3, align 8
  %23 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @B206X_FLAG_G, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %56

29:                                               ; preds = %21
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** %3, align 8
  %32 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** %3, align 8
  %35 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @b43_radio_write(%struct.b43_wldev* %30, i32 %33, i32 %36)
  br label %55

38:                                               ; preds = %10
  %39 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** %3, align 8
  %40 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @B206X_FLAG_A, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %56

46:                                               ; preds = %38
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** %3, align 8
  %49 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.b206x_init_tab_entry*, %struct.b206x_init_tab_entry** %3, align 8
  %52 = getelementptr inbounds %struct.b206x_init_tab_entry, %struct.b206x_init_tab_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @b43_radio_write(%struct.b43_wldev* %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %29
  br label %56

56:                                               ; preds = %55, %45, %28
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %5

59:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.b206x_init_tab_entry*) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
