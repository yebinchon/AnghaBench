; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_hl1_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_hl1_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_port_status_hl1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_port_status_hl1*)* @sja1105_port_status_hl1_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_port_status_hl1_unpack(i8* %0, %struct.sja1105_port_status_hl1* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sja1105_port_status_hl1*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sja1105_port_status_hl1* %1, %struct.sja1105_port_status_hl1** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 15
  %10 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %11 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %10, i32 0, i32 0
  %12 = call i32 @sja1105_unpack(i32* %9, i32* %11, i32 31, i32 0, i32 4)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 14
  %15 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %16 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %15, i32 0, i32 1
  %17 = call i32 @sja1105_unpack(i32* %14, i32* %16, i32 31, i32 0, i32 4)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 13
  %20 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %21 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %20, i32 0, i32 2
  %22 = call i32 @sja1105_unpack(i32* %19, i32* %21, i32 31, i32 0, i32 4)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 12
  %25 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %26 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %25, i32 0, i32 3
  %27 = call i32 @sja1105_unpack(i32* %24, i32* %26, i32 31, i32 0, i32 4)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 11
  %30 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %31 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %30, i32 0, i32 4
  %32 = call i32 @sja1105_unpack(i32* %29, i32* %31, i32 31, i32 0, i32 4)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  %35 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %36 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %35, i32 0, i32 5
  %37 = call i32 @sja1105_unpack(i32* %34, i32* %36, i32 31, i32 0, i32 4)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 9
  %40 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %41 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %40, i32 0, i32 6
  %42 = call i32 @sja1105_unpack(i32* %39, i32* %41, i32 31, i32 0, i32 4)
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %46 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %45, i32 0, i32 7
  %47 = call i32 @sja1105_unpack(i32* %44, i32* %46, i32 31, i32 0, i32 4)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %51 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %50, i32 0, i32 8
  %52 = call i32 @sja1105_unpack(i32* %49, i32* %51, i32 31, i32 0, i32 4)
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %56 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %55, i32 0, i32 9
  %57 = call i32 @sja1105_unpack(i32* %54, i32* %56, i32 31, i32 0, i32 4)
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %61 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %60, i32 0, i32 10
  %62 = call i32 @sja1105_unpack(i32* %59, i32* %61, i32 31, i32 0, i32 4)
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %66 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %65, i32 0, i32 11
  %67 = call i32 @sja1105_unpack(i32* %64, i32* %66, i32 31, i32 0, i32 4)
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %71 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %70, i32 0, i32 12
  %72 = call i32 @sja1105_unpack(i32* %69, i32* %71, i32 31, i32 0, i32 4)
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %76 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %75, i32 0, i32 13
  %77 = call i32 @sja1105_unpack(i32* %74, i32* %76, i32 31, i32 0, i32 4)
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %81 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %80, i32 0, i32 14
  %82 = call i32 @sja1105_unpack(i32* %79, i32* %81, i32 31, i32 0, i32 4)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %86 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %85, i32 0, i32 15
  %87 = call i32 @sja1105_unpack(i32* %84, i32* %86, i32 31, i32 0, i32 4)
  %88 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %89 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 32
  %92 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %93 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %97 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 32
  %100 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %101 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %105 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 32
  %108 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %109 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %113 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %112, i32 0, i32 14
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 32
  %116 = load %struct.sja1105_port_status_hl1*, %struct.sja1105_port_status_hl1** %4, align 8
  %117 = getelementptr inbounds %struct.sja1105_port_status_hl1, %struct.sja1105_port_status_hl1* %116, i32 0, i32 15
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  ret void
}

declare dso_local i32 @sja1105_unpack(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
