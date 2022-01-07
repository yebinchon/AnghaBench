; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp_ptp_get_message_types.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp_ptp_get_message_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwtstamp_config = type { i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwtstamp_config*, i32*, i32*, i32*)* @mlxsw_sp_ptp_get_message_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ptp_get_message_types(%struct.hwtstamp_config* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwtstamp_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hwtstamp_config* %0, %struct.hwtstamp_config** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %6, align 8
  %15 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %6, align 8
  %18 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %26 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %26

22:                                               ; preds = %4
  store i32 255, i32* %13, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ERANGE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %4, %22, %21
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %36 [
    i32 145, label %28
    i32 141, label %29
    i32 133, label %29
    i32 136, label %29
    i32 132, label %29
    i32 143, label %30
    i32 135, label %30
    i32 138, label %30
    i32 140, label %30
    i32 142, label %31
    i32 134, label %31
    i32 137, label %31
    i32 139, label %31
    i32 146, label %32
    i32 131, label %33
    i32 144, label %33
  ]

28:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %36

29:                                               ; preds = %26, %26, %26, %26
  store i32 1, i32* %12, align 4
  br label %36

30:                                               ; preds = %26, %26, %26, %26
  store i32 2, i32* %12, align 4
  br label %36

31:                                               ; preds = %26, %26, %26, %26
  store i32 15, i32* %12, align 4
  br label %36

32:                                               ; preds = %26
  store i32 255, i32* %12, align 4
  br label %36

33:                                               ; preds = %26, %26
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %43

36:                                               ; preds = %26, %32, %31, %30, %29, %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %36, %33, %23
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
