; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_power_up_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_power_up_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_csi2 = type { i32, i32*, %struct.adv748x_state* }
%struct.adv748x_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ADV748X_PAGE_TXA = common dso_local global i32 0, align 4
@ADV748X_PAGE_TXB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_csi2*)* @adv748x_power_up_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_power_up_tx(%struct.adv748x_csi2* %0) #0 {
  %2 = alloca %struct.adv748x_csi2*, align 8
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv748x_csi2* %0, %struct.adv748x_csi2** %2, align 8
  %6 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %7 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %6, i32 0, i32 2
  %8 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  store %struct.adv748x_state* %8, %struct.adv748x_state** %3, align 8
  %9 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %10 = call i64 @is_txa(%struct.adv748x_csi2* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ADV748X_PAGE_TXA, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ADV748X_PAGE_TXB, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %18 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %21 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 128, %22
  %24 = call i32 @adv748x_write_check(%struct.adv748x_state* %18, i32 %19, i32 0, i32 %23, i32* %5)
  %25 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %28 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 160, %29
  %31 = call i32 @adv748x_write_check(%struct.adv748x_state* %25, i32 %26, i32 0, i32 %30, i32* %5)
  %32 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %33 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %36 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = icmp eq i32* %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %16
  %40 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @adv748x_write_check(%struct.adv748x_state* %40, i32 %41, i32 219, i32 16, i32* %5)
  %43 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @adv748x_write_check(%struct.adv748x_state* %43, i32 %44, i32 214, i32 7, i32* %5)
  br label %50

46:                                               ; preds = %16
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @adv748x_write_check(%struct.adv748x_state* %47, i32 %48, i32 210, i32 64, i32* %5)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @adv748x_write_check(%struct.adv748x_state* %51, i32 %52, i32 196, i32 10, i32* %5)
  %54 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @adv748x_write_check(%struct.adv748x_state* %54, i32 %55, i32 113, i32 51, i32* %5)
  %57 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @adv748x_write_check(%struct.adv748x_state* %57, i32 %58, i32 114, i32 17, i32* %5)
  %60 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @adv748x_write_check(%struct.adv748x_state* %60, i32 %61, i32 240, i32 0, i32* %5)
  %63 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @adv748x_write_check(%struct.adv748x_state* %63, i32 %64, i32 49, i32 130, i32* %5)
  %66 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @adv748x_write_check(%struct.adv748x_state* %66, i32 %67, i32 30, i32 64, i32* %5)
  %69 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @adv748x_write_check(%struct.adv748x_state* %69, i32 %70, i32 218, i32 1, i32* %5)
  %72 = call i32 @usleep_range(i32 2000, i32 2500)
  %73 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %76 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 32, %77
  %79 = call i32 @adv748x_write_check(%struct.adv748x_state* %73, i32 %74, i32 0, i32 %78, i32* %5)
  %80 = call i32 @usleep_range(i32 1000, i32 1500)
  %81 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @adv748x_write_check(%struct.adv748x_state* %81, i32 %82, i32 193, i32 43, i32* %5)
  %84 = call i32 @usleep_range(i32 1000, i32 1500)
  %85 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @adv748x_write_check(%struct.adv748x_state* %85, i32 %86, i32 49, i32 128, i32* %5)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @is_txa(%struct.adv748x_csi2*) #1

declare dso_local i32 @adv748x_write_check(%struct.adv748x_state*, i32, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
