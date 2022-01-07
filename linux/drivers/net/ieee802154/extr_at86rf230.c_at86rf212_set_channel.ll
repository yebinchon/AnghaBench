; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf212_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf212_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SR_SUB_MODE = common dso_local global i32 0, align 4
@SR_BPSK_QPSK = common dso_local global i32 0, align 4
@IEEE802154_LIFS_PERIOD = common dso_local global i32 0, align 4
@IEEE802154_SIFS_PERIOD = common dso_local global i32 0, align 4
@SR_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at86rf230_local*, i64, i64)* @at86rf212_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf212_set_channel(%struct.at86rf230_local* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.at86rf230_local*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %13 = load i32, i32* @SR_SUB_MODE, align 4
  %14 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %12, i32 %13, i64 0)
  store i32 %14, i32* %8, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %17 = load i32, i32* @SR_SUB_MODE, align 4
  %18 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %16, i32 %17, i64 1)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %134

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %29 = load i32, i32* @SR_BPSK_QPSK, align 4
  %30 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %28, i32 %29, i64 0)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %32 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 -100, i32* %34, align 4
  br label %43

35:                                               ; preds = %24
  %36 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %37 = load i32, i32* @SR_BPSK_QPSK, align 4
  %38 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %36, i32 %37, i64 1)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %40 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 -98, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %27
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %134

48:                                               ; preds = %43
  %49 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %50 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %51 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @at86rf212_update_cca_ed_level(%struct.at86rf230_local* %49, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %134

60:                                               ; preds = %48
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %68 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 50, i32* %72, align 4
  br label %80

73:                                               ; preds = %63
  %74 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %75 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 25, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %99

81:                                               ; preds = %60
  %82 = load i64, i64* %6, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %86 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 40, i32* %90, align 4
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %93 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 16, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i32, i32* @IEEE802154_LIFS_PERIOD, align 4
  %101 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %102 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %100, %107
  %109 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %110 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 %108, i32* %114, align 4
  %115 = load i32, i32* @IEEE802154_SIFS_PERIOD, align 4
  %116 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %117 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %115, %122
  %124 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %125 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i32 %123, i32* %129, align 4
  %130 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %131 = load i32, i32* @SR_CHANNEL, align 4
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %130, i32 %131, i64 %132)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %99, %58, %46, %22
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @at86rf230_write_subreg(%struct.at86rf230_local*, i32, i64) #1

declare dso_local i32 @at86rf212_update_cca_ed_level(%struct.at86rf230_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
