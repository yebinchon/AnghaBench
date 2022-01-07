; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_table = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_table_delete_entry(%struct.sja1105_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.sja1105_table* %0, %struct.sja1105_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %9 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %14 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %18 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ERANGE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = mul i64 %27, %28
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %39 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = mul i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memmove(i32* %30, i32* %37, i32 %46)
  %48 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %49 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %24, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
