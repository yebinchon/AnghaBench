; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_mac_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_mac_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_port_status_mac = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_port_status_mac*)* @sja1105_port_status_mac_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_port_status_mac_unpack(i8* %0, %struct.sja1105_port_status_mac* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sja1105_port_status_mac*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sja1105_port_status_mac* %1, %struct.sja1105_port_status_mac** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %11 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %10, i32 0, i32 23
  %12 = call i32 @sja1105_unpack(i32* %9, i32* %11, i32 31, i32 24, i32 4)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %16 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %15, i32 0, i32 22
  %17 = call i32 @sja1105_unpack(i32* %14, i32* %16, i32 23, i32 16, i32 4)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %21 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %20, i32 0, i32 21
  %22 = call i32 @sja1105_unpack(i32* %19, i32* %21, i32 15, i32 8, i32 4)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %26 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %25, i32 0, i32 20
  %27 = call i32 @sja1105_unpack(i32* %24, i32* %26, i32 7, i32 0, i32 4)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %31 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %30, i32 0, i32 19
  %32 = call i32 @sja1105_unpack(i32* %29, i32* %31, i32 27, i32 27, i32 4)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %36 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %35, i32 0, i32 18
  %37 = call i32 @sja1105_unpack(i32* %34, i32* %36, i32 26, i32 26, i32 4)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %41 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %40, i32 0, i32 17
  %42 = call i32 @sja1105_unpack(i32* %39, i32* %41, i32 25, i32 25, i32 4)
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %46 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %45, i32 0, i32 16
  %47 = call i32 @sja1105_unpack(i32* %44, i32* %46, i32 24, i32 24, i32 4)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %51 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %50, i32 0, i32 15
  %52 = call i32 @sja1105_unpack(i32* %49, i32* %51, i32 23, i32 23, i32 4)
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %56 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %55, i32 0, i32 14
  %57 = call i32 @sja1105_unpack(i32* %54, i32* %56, i32 22, i32 22, i32 4)
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %61 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %60, i32 0, i32 13
  %62 = call i32 @sja1105_unpack(i32* %59, i32* %61, i32 21, i32 21, i32 4)
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %66 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %65, i32 0, i32 12
  %67 = call i32 @sja1105_unpack(i32* %64, i32* %66, i32 19, i32 19, i32 4)
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %71 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %70, i32 0, i32 11
  %72 = call i32 @sja1105_unpack(i32* %69, i32* %71, i32 18, i32 18, i32 4)
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %76 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %75, i32 0, i32 10
  %77 = call i32 @sja1105_unpack(i32* %74, i32* %76, i32 17, i32 17, i32 4)
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %81 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %80, i32 0, i32 9
  %82 = call i32 @sja1105_unpack(i32* %79, i32* %81, i32 16, i32 16, i32 4)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %86 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %85, i32 0, i32 8
  %87 = call i32 @sja1105_unpack(i32* %84, i32* %86, i32 15, i32 12, i32 4)
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %91 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %90, i32 0, i32 7
  %92 = call i32 @sja1105_unpack(i32* %89, i32* %91, i32 11, i32 8, i32 4)
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %96 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %95, i32 0, i32 6
  %97 = call i32 @sja1105_unpack(i32* %94, i32* %96, i32 6, i32 6, i32 4)
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %101 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %100, i32 0, i32 5
  %102 = call i32 @sja1105_unpack(i32* %99, i32* %101, i32 5, i32 5, i32 4)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %106 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %105, i32 0, i32 4
  %107 = call i32 @sja1105_unpack(i32* %104, i32* %106, i32 4, i32 4, i32 4)
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %111 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %110, i32 0, i32 3
  %112 = call i32 @sja1105_unpack(i32* %109, i32* %111, i32 3, i32 3, i32 4)
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %116 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %115, i32 0, i32 2
  %117 = call i32 @sja1105_unpack(i32* %114, i32* %116, i32 2, i32 2, i32 4)
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %121 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %120, i32 0, i32 1
  %122 = call i32 @sja1105_unpack(i32* %119, i32* %121, i32 1, i32 1, i32 4)
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load %struct.sja1105_port_status_mac*, %struct.sja1105_port_status_mac** %4, align 8
  %126 = getelementptr inbounds %struct.sja1105_port_status_mac, %struct.sja1105_port_status_mac* %125, i32 0, i32 0
  %127 = call i32 @sja1105_unpack(i32* %124, i32* %126, i32 0, i32 0, i32 4)
  ret void
}

declare dso_local i32 @sja1105_unpack(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
