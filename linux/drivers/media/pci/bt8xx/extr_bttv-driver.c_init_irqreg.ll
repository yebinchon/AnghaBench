; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_init_irqreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_init_irqreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.bttv = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@BT848_INT_STAT = common dso_local global i32 0, align 4
@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@BT848_INT_I2CDONE = common dso_local global i32 0, align 4
@BT848_INT_MASK = common dso_local global i32 0, align 4
@BT848_INT_GPINT = common dso_local global i32 0, align 4
@BT848_INT_SCERR = common dso_local global i32 0, align 4
@fdsr = common dso_local global i64 0, align 8
@BT848_INT_FDSR = common dso_local global i32 0, align 4
@BT848_INT_RISCI = common dso_local global i32 0, align 4
@BT848_INT_OCERR = common dso_local global i32 0, align 4
@BT848_INT_FMTCHG = common dso_local global i32 0, align 4
@BT848_INT_HLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @init_irqreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_irqreg(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load i32, i32* @BT848_INT_STAT, align 4
  %4 = call i32 @btwrite(i32 1048575, i32 %3)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %6 = load %struct.bttv*, %struct.bttv** %2, align 8
  %7 = getelementptr inbounds %struct.bttv, %struct.bttv* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @BT848_INT_I2CDONE, align 4
  %16 = load i32, i32* @BT848_INT_MASK, align 4
  %17 = call i32 @btwrite(i32 %15, i32 %16)
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.bttv*, %struct.bttv** %2, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bttv*, %struct.bttv** %2, align 8
  %23 = getelementptr inbounds %struct.bttv, %struct.bttv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @BT848_INT_GPINT, align 4
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %21, %30
  %32 = load i32, i32* @BT848_INT_SCERR, align 4
  %33 = or i32 %31, %32
  %34 = load i64, i64* @fdsr, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @BT848_INT_FDSR, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %33, %40
  %42 = load i32, i32* @BT848_INT_RISCI, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BT848_INT_OCERR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BT848_INT_FMTCHG, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BT848_INT_HLOCK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BT848_INT_I2CDONE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BT848_INT_MASK, align 4
  %53 = call i32 @btwrite(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %39, %14
  ret void
}

declare dso_local i32 @btwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
