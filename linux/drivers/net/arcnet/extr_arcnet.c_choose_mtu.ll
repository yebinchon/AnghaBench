; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_choose_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_choose_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@arc_proto_map = common dso_local global %struct.TYPE_3__** null, align 8
@arc_proto_null = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@XMTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @choose_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_mtu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 65535, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @arc_proto_map, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, @arc_proto_null
  br i1 %12, label %13, label %31

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @arc_proto_map, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @arc_proto_map, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %13, %6
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3

35:                                               ; preds = %3
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @XMTU, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
