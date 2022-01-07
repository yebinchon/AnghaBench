; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_rb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_rb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.rb_root }
%struct.rb_root = type { i32 }
%struct.swap_eb = type { %struct.rb_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtdswap_dev*, %struct.swap_eb*, i32)* @mtdswap_rb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdswap_rb_add(%struct.mtdswap_dev* %0, %struct.swap_eb* %1, i32 %2) #0 {
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb_root*, align 8
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %9 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %8, i32 0, i32 0
  %10 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %11 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = icmp eq %struct.rb_root* %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %22 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %23 = call i32 @mtdswap_eb_detach(%struct.mtdswap_dev* %21, %struct.swap_eb* %22)
  %24 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.rb_root* %30, %struct.rb_root** %7, align 8
  %31 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %32 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %33 = call i32 @__mtdswap_rb_add(%struct.rb_root* %31, %struct.swap_eb* %32)
  %34 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %35 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %36 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %35, i32 0, i32 0
  store %struct.rb_root* %34, %struct.rb_root** %36, align 8
  %37 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @mtdswap_eb_detach(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @__mtdswap_rb_add(%struct.rb_root*, %struct.swap_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
