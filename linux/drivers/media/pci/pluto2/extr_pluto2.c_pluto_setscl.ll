; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_setscl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32 }

@REG_SLCS = common dso_local global i32 0, align 4
@SLCS_SCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pluto_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pluto*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pluto*
  store %struct.pluto* %7, %struct.pluto** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pluto*, %struct.pluto** %5, align 8
  %12 = load i32, i32* @REG_SLCS, align 4
  %13 = load i32, i32* @SLCS_SCL, align 4
  %14 = load i32, i32* @SLCS_SCL, align 4
  %15 = call i32 @pluto_rw(%struct.pluto* %11, i32 %12, i32 %13, i32 %14)
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.pluto*, %struct.pluto** %5, align 8
  %18 = load i32, i32* @REG_SLCS, align 4
  %19 = load i32, i32* @SLCS_SCL, align 4
  %20 = call i32 @pluto_rw(%struct.pluto* %17, i32 %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.pluto*, %struct.pluto** %5, align 8
  %26 = getelementptr inbounds %struct.pluto, %struct.pluto* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.pluto*, %struct.pluto** %5, align 8
  %31 = getelementptr inbounds %struct.pluto, %struct.pluto* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %46

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load %struct.pluto*, %struct.pluto** %5, align 8
  %37 = getelementptr inbounds %struct.pluto, %struct.pluto* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.pluto*, %struct.pluto** %5, align 8
  %42 = call i32 @pluto_setsda(%struct.pluto* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %35, %32
  %44 = load %struct.pluto*, %struct.pluto** %5, align 8
  %45 = getelementptr inbounds %struct.pluto, %struct.pluto* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %29
  ret void
}

declare dso_local i32 @pluto_rw(%struct.pluto*, i32, i32, i32) #1

declare dso_local i32 @pluto_setsda(%struct.pluto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
