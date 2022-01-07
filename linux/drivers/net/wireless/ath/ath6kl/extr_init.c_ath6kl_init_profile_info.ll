; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_profile_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_profile_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, i32, i32, i64, i8*, i64, i8*, i32, i32, i32, i64 }

@OPEN_AUTH = common dso_local global i32 0, align 4
@NONE_AUTH = common dso_local global i32 0, align 4
@NONE_CRYPT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_init_profile_info(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca %struct.ath6kl_vif*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %2, align 8
  %3 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %4 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %3, i32 0, i32 11
  store i64 0, i64* %4, align 8
  %5 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %6 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @memset(i32 %7, i32 0, i32 4)
  %9 = load i32, i32* @OPEN_AUTH, align 4
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NONE_AUTH, align 4
  %13 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %14 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** @NONE_CRYPT, align 8
  %16 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %17 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** @NONE_CRYPT, align 8
  %21 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %22 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %24 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %26 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %30 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %34 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %38 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
