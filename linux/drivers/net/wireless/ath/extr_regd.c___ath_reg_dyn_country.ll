; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c___ath_reg_dyn_country.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c___ath_reg_dyn_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ath_regulatory = type { i32 }
%struct.regulatory_request = type { i64, i32 }

@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@COUNTRY_ERD_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.ath_regulatory*, %struct.regulatory_request*)* @__ath_reg_dyn_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath_reg_dyn_country(%struct.wiphy* %0, %struct.ath_regulatory* %1, %struct.regulatory_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.ath_regulatory*, align 8
  %7 = alloca %struct.regulatory_request*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.ath_regulatory* %1, %struct.ath_regulatory** %6, align 8
  store %struct.regulatory_request* %2, %struct.regulatory_request** %7, align 8
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %10 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.ath_regulatory*, %struct.ath_regulatory** %6, align 8
  %16 = call i32 @ath_is_world_regd(%struct.ath_regulatory* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %14, %3
  %22 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %23 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ath_regd_find_country_by_name(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %48

31:                                               ; preds = %21
  %32 = load i32, i32* @COUNTRY_ERD_FLAG, align 4
  %33 = load %struct.ath_regulatory*, %struct.ath_regulatory** %6, align 8
  %34 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ath_regulatory*, %struct.ath_regulatory** %6, align 8
  %37 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ath_regulatory*, %struct.ath_regulatory** %6, align 8
  %41 = call i32 @__ath_regd_init(%struct.ath_regulatory* %40)
  %42 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %43 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %44 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ath_regulatory*, %struct.ath_regulatory** %6, align 8
  %47 = call i32 @ath_reg_apply_world_flags(%struct.wiphy* %42, i64 %45, %struct.ath_regulatory* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %31, %28, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ath_is_world_regd(%struct.ath_regulatory*) #1

declare dso_local i32 @ath_regd_find_country_by_name(i32) #1

declare dso_local i32 @__ath_regd_init(%struct.ath_regulatory*) #1

declare dso_local i32 @ath_reg_apply_world_flags(%struct.wiphy*, i64, %struct.ath_regulatory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
