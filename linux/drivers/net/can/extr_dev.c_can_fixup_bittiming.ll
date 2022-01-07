; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_fixup_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_fixup_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.can_bittiming_const = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_bittiming*, %struct.can_bittiming_const*)* @can_fixup_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_fixup_bittiming(%struct.net_device* %0, %struct.can_bittiming* %1, %struct.can_bittiming_const* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.can_bittiming*, align 8
  %7 = alloca %struct.can_bittiming_const*, align 8
  %8 = alloca %struct.can_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %6, align 8
  store %struct.can_bittiming_const* %2, %struct.can_bittiming_const** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.can_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.can_priv* %13, %struct.can_priv** %8, align 8
  %14 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %15 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %18 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %22 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %30 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %33 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %39 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %45 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %42
  %49 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %50 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %53 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %58 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %61 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56, %48, %42, %36, %28
  %65 = load i32, i32* @ERANGE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %159

67:                                               ; preds = %56
  %68 = load %struct.can_priv*, %struct.can_priv** %8, align 8
  %69 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %74 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %72, %75
  store i64 %76, i64* %11, align 8
  %77 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %78 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %67
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %84 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 @do_div(i64 %82, i64 %86)
  br label %88

88:                                               ; preds = %81, %67
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 499999999
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @do_div(i64 %91, i64 1000000000)
  %93 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %94 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %99 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %11, align 8
  %103 = mul i64 %102, %101
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %97, %88
  %105 = load i64, i64* %11, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %108 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %110 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %113 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %104
  %117 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %118 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %121 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116, %104
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %159

127:                                              ; preds = %116
  %128 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %129 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %132 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  %135 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %136 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = load %struct.can_priv*, %struct.can_priv** %8, align 8
  %141 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %145 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sdiv i32 %143, %148
  %150 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %151 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  %154 = mul nsw i32 %153, 1000
  %155 = load i32, i32* %10, align 4
  %156 = sdiv i32 %154, %155
  %157 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %158 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %127, %124, %64
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
