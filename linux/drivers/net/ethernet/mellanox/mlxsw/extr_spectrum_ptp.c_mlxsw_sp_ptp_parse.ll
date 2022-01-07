; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp_ptp_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp_ptp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@PTP_CLASS_VMASK = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@PTP_CLASS_VLAN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PTP_CLASS_PMASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@UDP_HLEN = common dso_local global i32 0, align 4
@IP6_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i32*, i32*)* @mlxsw_sp_ptp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ptp_parse(%struct.sk_buff* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32* @skb_mac_header(%struct.sk_buff* %13)
  store i32* %14, i32** %12, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @ptp_classify_raw(%struct.sk_buff* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @PTP_CLASS_VMASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %21 [
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %4, %4
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ERANGE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %106

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PTP_CLASS_VLAN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i64, i64* @VLAN_HLEN, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PTP_CLASS_PMASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %63 [
    i32 132, label %39
    i32 131, label %51
    i32 130, label %59
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @ETH_HLEN, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @IPV4_HLEN(i32* %44)
  %46 = add i32 %40, %45
  %47 = load i32, i32* @UDP_HLEN, align 4
  %48 = add i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %66

51:                                               ; preds = %35
  %52 = load i32, i32* @ETH_HLEN, align 4
  %53 = load i32, i32* @IP6_HLEN, align 4
  %54 = add i32 %52, %53
  %55 = load i32, i32* @UDP_HLEN, align 4
  %56 = add i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %66

59:                                               ; preds = %35
  %60 = load i32, i32* @ETH_HLEN, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %66

63:                                               ; preds = %35
  %64 = load i32, i32* @ERANGE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %106

66:                                               ; preds = %59, %51, %39
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 34
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %106

76:                                               ; preds = %66
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %92, 30
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 31
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %97, %103
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %76, %73, %63, %21
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ptp_classify_raw(%struct.sk_buff*) #1

declare dso_local i32 @IPV4_HLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
