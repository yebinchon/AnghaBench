; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_priv_flags_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_priv_flags_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i32, %struct.octeon_device* }
%struct.octeon_device = type { i32 }

@oct_priv_flags_strings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown Chip !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lio*, i32*)* @lio_get_priv_flags_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_priv_flags_strings(%struct.lio* %0, i32* %1) #0 {
  %3 = alloca %struct.lio*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.lio*, %struct.lio** %3, align 8
  %8 = getelementptr inbounds %struct.lio, %struct.lio* %7, i32 0, i32 1
  %9 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  store %struct.octeon_device* %9, %struct.octeon_device** %5, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %36 [
    i32 131, label %13
    i32 130, label %13
    i32 128, label %35
    i32 129, label %35
  ]

13:                                               ; preds = %2, %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i8**, i8*** @oct_priv_flags_strings, align 8
  %17 = call i32 @ARRAY_SIZE(i8** %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load i8**, i8*** @oct_priv_flags_strings, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sprintf(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %4, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %14
  br label %43

35:                                               ; preds = %2, %2
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.lio*, %struct.lio** %3, align 8
  %38 = load i32, i32* @drv, align 4
  %39 = load %struct.lio*, %struct.lio** %3, align 8
  %40 = getelementptr inbounds %struct.lio, %struct.lio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netif_info(%struct.lio* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %36, %35, %34
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @sprintf(i32*, i8*, i8*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
