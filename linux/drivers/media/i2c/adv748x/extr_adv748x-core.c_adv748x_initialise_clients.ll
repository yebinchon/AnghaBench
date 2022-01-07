; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_initialise_clients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_initialise_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.adv748x_state = type { i32*, i32 }

@ADV748X_PAGE_DPLL = common dso_local global i32 0, align 4
@ADV748X_PAGE_MAX = common dso_local global i32 0, align 4
@adv748x_default_addresses = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to create i2c client %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*)* @adv748x_initialise_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_initialise_clients(%struct.adv748x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %3, align 8
  %6 = load i32, i32* @ADV748X_PAGE_DPLL, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %64, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ADV748X_PAGE_MAX, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %7
  %12 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %13 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adv748x_default_addresses, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adv748x_default_addresses, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i2c_new_ancillary_device(i32 %14, i32 %20, i32 %26)
  %28 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %29 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %35 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %11
  %44 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @adv_err(%struct.adv748x_state* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %48 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %70

55:                                               ; preds = %11
  %56 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @adv748x_configure_regmap(%struct.adv748x_state* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %70

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %7

67:                                               ; preds = %7
  %68 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %69 = call i32 @adv748x_set_slave_addresses(%struct.adv748x_state* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %61, %43
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_new_ancillary_device(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @adv_err(%struct.adv748x_state*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @adv748x_configure_regmap(%struct.adv748x_state*, i32) #1

declare dso_local i32 @adv748x_set_slave_addresses(%struct.adv748x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
