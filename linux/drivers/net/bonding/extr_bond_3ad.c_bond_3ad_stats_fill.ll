; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bond_3ad_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BOND_3AD_STAT_LACPDU_RX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_PAD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@BOND_3AD_STAT_LACPDU_TX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_LACPDU_UNKNOWN_RX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_LACPDU_ILLEGAL_RX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_MARKER_RX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_MARKER_TX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_MARKER_RESP_RX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_MARKER_RESP_TX = common dso_local global i32 0, align 4
@BOND_3AD_STAT_MARKER_UNKNOWN_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_3ad_stats_fill(%struct.sk_buff* %0, %struct.bond_3ad_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.bond_3ad_stats*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.bond_3ad_stats* %1, %struct.bond_3ad_stats** %5, align 8
  %7 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %8 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %7, i32 0, i32 8
  %9 = call i32 @atomic64_read(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @BOND_3AD_STAT_LACPDU_RX, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %14 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %10, i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EMSGSIZE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %124

19:                                               ; preds = %2
  %20 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %21 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %20, i32 0, i32 7
  %22 = call i32 @atomic64_read(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @BOND_3AD_STAT_LACPDU_TX, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %27 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %19
  %33 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %34 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %33, i32 0, i32 6
  %35 = call i32 @atomic64_read(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @BOND_3AD_STAT_LACPDU_UNKNOWN_RX, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %40 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %124

45:                                               ; preds = %32
  %46 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %47 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %46, i32 0, i32 5
  %48 = call i32 @atomic64_read(i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @BOND_3AD_STAT_LACPDU_ILLEGAL_RX, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %53 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EMSGSIZE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %124

58:                                               ; preds = %45
  %59 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %60 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %59, i32 0, i32 4
  %61 = call i32 @atomic64_read(i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @BOND_3AD_STAT_MARKER_RX, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %66 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %62, i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @EMSGSIZE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %124

71:                                               ; preds = %58
  %72 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %73 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %72, i32 0, i32 3
  %74 = call i32 @atomic64_read(i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load i32, i32* @BOND_3AD_STAT_MARKER_TX, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %79 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @EMSGSIZE, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %124

84:                                               ; preds = %71
  %85 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %86 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %85, i32 0, i32 2
  %87 = call i32 @atomic64_read(i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load i32, i32* @BOND_3AD_STAT_MARKER_RESP_RX, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %92 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %88, i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @EMSGSIZE, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %124

97:                                               ; preds = %84
  %98 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %99 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %98, i32 0, i32 1
  %100 = call i32 @atomic64_read(i32* %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load i32, i32* @BOND_3AD_STAT_MARKER_RESP_TX, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %105 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %101, i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* @EMSGSIZE, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %124

110:                                              ; preds = %97
  %111 = load %struct.bond_3ad_stats*, %struct.bond_3ad_stats** %5, align 8
  %112 = getelementptr inbounds %struct.bond_3ad_stats, %struct.bond_3ad_stats* %111, i32 0, i32 0
  %113 = call i32 @atomic64_read(i32* %112)
  store i32 %113, i32* %6, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load i32, i32* @BOND_3AD_STAT_MARKER_UNKNOWN_RX, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @BOND_3AD_STAT_PAD, align 4
  %118 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %114, i32 %115, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* @EMSGSIZE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %124

123:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %120, %107, %94, %81, %68, %55, %42, %29, %16
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
