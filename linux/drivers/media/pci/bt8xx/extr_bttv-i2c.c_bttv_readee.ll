; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_readee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_readee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_readee(%struct.bttv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @memset(i8* %7, i32 0, i32 256)
  %9 = load %struct.bttv*, %struct.bttv** %4, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 0, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 1
  %17 = load %struct.bttv*, %struct.bttv** %4, align 8
  %18 = getelementptr inbounds %struct.bttv, %struct.bttv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.bttv*, %struct.bttv** %4, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 1
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @tveeprom_read(%struct.TYPE_2__* %21, i8* %22, i32 256)
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tveeprom_read(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
