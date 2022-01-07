; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_configure_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_configure_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@adv748x_regmap_cnf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error initializing regmap %d with error %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*, i32)* @adv748x_configure_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_configure_regmap(%struct.adv748x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv748x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %8 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %20 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @adv748x_regmap_cnf, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @devm_regmap_init_i2c(i32 %25, i32* %29)
  %31 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %32 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %38 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %18
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %48 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @adv_err(%struct.adv748x_state* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %46, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @devm_regmap_init_i2c(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @adv_err(%struct.adv748x_state*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
