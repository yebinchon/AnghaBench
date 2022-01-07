; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ts2020_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ts2020_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts2020_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ts2020_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.ts2020_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.ts2020_priv* %5, %struct.ts2020_priv** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %14, i32 0, i32 1
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_exit(i32 %20)
  %22 = load %struct.ts2020_priv*, %struct.ts2020_priv** %3, align 8
  %23 = call i32 @kfree(%struct.ts2020_priv* %22)
  ret i32 0
}

declare dso_local %struct.ts2020_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @kfree(%struct.ts2020_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
