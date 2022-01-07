; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_set_tuner_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_set_tuner_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ts2020_priv* }
%struct.ts2020_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @ts2020_set_tuner_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts2020_set_tuner_rf(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.ts2020_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  store %struct.ts2020_priv* %9, %struct.ts2020_priv** %4, align 8
  %10 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_read(i32 %12, i32 61, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 127
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 22
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 161, i32* %6, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 22
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 153, i32* %6, align 4
  br label %29

28:                                               ; preds = %24
  store i32 249, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 96, i32 %34)
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %36, i32 8)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
