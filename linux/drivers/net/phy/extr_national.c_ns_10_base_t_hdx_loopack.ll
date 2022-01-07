; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_national.c_ns_10_base_t_hdx_loopack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_national.c_ns_10_base_t_hdx_loopack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"10BASE-T HDX loopback %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, i32)* @ns_10_base_t_hdx_loopack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns_10_base_t_hdx_loopack(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @BIT(i32 1)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @ns_exp_read(%struct.phy_device* %11, i32 448)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @ns_exp_write(%struct.phy_device* %10, i32 448, i32 %14)
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = call i32 @ns_exp_read(%struct.phy_device* %18, i32 448)
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @ns_exp_write(%struct.phy_device* %17, i32 448, i32 %22)
  br label %24

24:                                               ; preds = %16, %9
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = call i32 @ns_exp_read(%struct.phy_device* %25, i32 448)
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %31)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ns_exp_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @ns_exp_read(%struct.phy_device*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
