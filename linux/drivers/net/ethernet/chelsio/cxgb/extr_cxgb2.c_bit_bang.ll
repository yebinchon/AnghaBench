; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_bit_bang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_bit_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_ELMER0_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32)* @bit_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_bang(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %47, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = call i32 @udelay(i32 50)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i32, i32* @A_ELMER0_GPO, align 4
  %23 = call i32 @__t1_tpi_read(%struct.adapter* %21, i32 %22, i32* %9)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, 16
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, -17
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = call i32 @udelay(i32 50)
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, -9
  store i32 %35, i32* %9, align 4
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = load i32, i32* @A_ELMER0_GPO, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__t1_tpi_write(%struct.adapter* %36, i32 %37, i32 %38)
  %40 = call i32 @udelay(i32 50)
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = load i32, i32* @A_ELMER0_GPO, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @__t1_tpi_write(%struct.adapter* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__t1_tpi_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @__t1_tpi_write(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
