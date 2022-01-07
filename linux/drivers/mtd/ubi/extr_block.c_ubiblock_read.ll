; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubiblock_pdu = type { i32 }
%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubiblock* }
%struct.ubiblock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubiblock_pdu*)* @ubiblock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubiblock_read(%struct.ubiblock_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubiblock_pdu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request*, align 8
  %11 = alloca %struct.ubiblock*, align 8
  store %struct.ubiblock_pdu* %0, %struct.ubiblock_pdu** %3, align 8
  %12 = load %struct.ubiblock_pdu*, %struct.ubiblock_pdu** %3, align 8
  %13 = call %struct.request* @blk_mq_rq_from_pdu(%struct.ubiblock_pdu* %12)
  store %struct.request* %13, %struct.request** %10, align 8
  %14 = load %struct.request*, %struct.request** %10, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ubiblock*, %struct.ubiblock** %17, align 8
  store %struct.ubiblock* %18, %struct.ubiblock** %11, align 8
  %19 = load %struct.request*, %struct.request** %10, align 8
  %20 = call i32 @blk_rq_bytes(%struct.request* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.request*, %struct.request** %10, align 8
  %22 = call i32 @blk_rq_pos(%struct.request* %21)
  %23 = shl i32 %22, 9
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ubiblock*, %struct.ubiblock** %11, align 8
  %26 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @do_div(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %62, %1
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.ubiblock*, %struct.ubiblock** %11, align 8
  %39 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.ubiblock*, %struct.ubiblock** %11, align 8
  %44 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.ubiblock*, %struct.ubiblock** %11, align 8
  %50 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ubiblock_pdu*, %struct.ubiblock_pdu** %3, align 8
  %54 = getelementptr inbounds %struct.ubiblock_pdu, %struct.ubiblock_pdu* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ubi_read_sg(i32 %51, i32 %52, i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %70

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %31

69:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.request* @blk_mq_rq_from_pdu(%struct.ubiblock_pdu*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @ubi_read_sg(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
