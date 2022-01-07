; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_regmap_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_regmap_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts2020_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ts2020_regmap_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts2020_regmap_lock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ts2020_priv*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ts2020_priv*
  store %struct.ts2020_priv* %5, %struct.ts2020_priv** %3, align 8
  %6 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_4__*, i32)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %21, align 8
  %23 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 %22(%struct.TYPE_4__* %25, i32 1)
  br label %27

27:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
