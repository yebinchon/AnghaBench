; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sfp_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sfp*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sfp*
  store %struct.sfp* %5, %struct.sfp** %3, align 8
  %6 = load %struct.sfp*, %struct.sfp** %3, align 8
  %7 = getelementptr inbounds %struct.sfp, %struct.sfp* %6, i32 0, i32 3
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.sfp*, %struct.sfp** %3, align 8
  %10 = getelementptr inbounds %struct.sfp, %struct.sfp* %9, i32 0, i32 2
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.sfp*, %struct.sfp** %3, align 8
  %13 = getelementptr inbounds %struct.sfp, %struct.sfp* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.sfp*, %struct.sfp** %3, align 8
  %18 = getelementptr inbounds %struct.sfp, %struct.sfp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mdiobus_unregister(i64 %19)
  %21 = load %struct.sfp*, %struct.sfp** %3, align 8
  %22 = getelementptr inbounds %struct.sfp, %struct.sfp* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mdiobus_free(i64 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.sfp*, %struct.sfp** %3, align 8
  %27 = getelementptr inbounds %struct.sfp, %struct.sfp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.sfp*, %struct.sfp** %3, align 8
  %32 = getelementptr inbounds %struct.sfp, %struct.sfp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @i2c_put_adapter(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.sfp*, %struct.sfp** %3, align 8
  %37 = call i32 @kfree(%struct.sfp* %36)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @mdiobus_free(i64) #1

declare dso_local i32 @i2c_put_adapter(i64) #1

declare dso_local i32 @kfree(%struct.sfp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
