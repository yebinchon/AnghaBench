; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_port_has_xo2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_port_has_xo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*, i32*, i32*)* @port_has_xo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_has_xo2(%struct.ddb_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca [4 x i32], align 16
  store %struct.ddb_port* %0, %struct.ddb_port** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %12 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %17 = call i64 @i2c_io(i32* %14, i32 16, i32* %15, i32 1, i32* %16, i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp eq i32 %22, 68
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 70
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 1, i32* %32, align 4
  store i32 1, i32* %4, align 4
  br label %47

33:                                               ; preds = %24, %20
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = icmp eq i32 %35, 67
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 73
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 2, i32* %45, align 4
  store i32 1, i32* %4, align 4
  br label %47

46:                                               ; preds = %37, %33
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41, %28, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @i2c_io(i32*, i32, i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
