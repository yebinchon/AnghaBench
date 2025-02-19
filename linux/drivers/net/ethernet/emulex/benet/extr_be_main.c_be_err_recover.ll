; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_err_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_err_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BE_DISABLE_TPE_RECOVERY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BE_FLAGS_TRY_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_err_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_err_recover(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %6 = call i32 @lancer_chip(%struct.be_adapter* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BE_DISABLE_TPE_RECOVERY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %14
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = call i32 @be_tpe_recover(%struct.be_adapter* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = call i32 @be_fw_wait_ready(%struct.be_adapter* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %57

37:                                               ; preds = %31
  %38 = load i32, i32* @BE_FLAGS_TRY_RECOVERY, align 4
  %39 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = call i32 @be_cleanup(%struct.be_adapter* %43)
  %45 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %46 = call i32 @be_resume(%struct.be_adapter* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %57

50:                                               ; preds = %37
  %51 = load i32, i32* @BE_FLAGS_TRY_RECOVERY, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %49, %36, %29
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_tpe_recover(%struct.be_adapter*) #1

declare dso_local i32 @be_fw_wait_ready(%struct.be_adapter*) #1

declare dso_local i32 @be_cleanup(%struct.be_adapter*) #1

declare dso_local i32 @be_resume(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
