; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethoc = type { i32, i32, i8**, i8*, i64, i64, i64 }
%struct.ethoc_bd = type { i64, i32 }

@TX_BD_NUM = common dso_local global i32 0, align 4
@TX_BD_IRQ = common dso_local global i32 0, align 4
@TX_BD_CRC = common dso_local global i32 0, align 4
@TX_BD_WRAP = common dso_local global i32 0, align 4
@ETHOC_BUFSIZ = common dso_local global i64 0, align 8
@RX_BD_EMPTY = common dso_local global i32 0, align 4
@RX_BD_IRQ = common dso_local global i32 0, align 4
@RX_BD_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethoc*, i64)* @ethoc_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_init_ring(%struct.ethoc* %0, i64 %1) #0 {
  %3 = alloca %struct.ethoc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ethoc_bd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ethoc* %0, %struct.ethoc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %9 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %11 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %13 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %15 = load i32, i32* @TX_BD_NUM, align 4
  %16 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %17 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ethoc_write(%struct.ethoc* %14, i32 %15, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @TX_BD_IRQ, align 4
  %23 = load i32, i32* @TX_BD_CRC, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %27 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %65, %2
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %32 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %38 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @TX_BD_WRAP, align 4
  %44 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ethoc_write_bd(%struct.ethoc* %48, i32 %49, %struct.ethoc_bd* %5)
  %51 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %52 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, i64* %52, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %57 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %55, i8** %61, align 8
  %62 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr i8, i8* %63, i64 %62
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %29

68:                                               ; preds = %29
  %69 = load i32, i32* @RX_BD_EMPTY, align 4
  %70 = load i32, i32* @RX_BD_IRQ, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %117, %68
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %76 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %120

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %82 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @RX_BD_WRAP, align 4
  %88 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %93 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %94 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @ethoc_write_bd(%struct.ethoc* %92, i32 %97, %struct.ethoc_bd* %5)
  %99 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %100 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %105 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %108 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %106, i64 %112
  store i8* %103, i8** %113, align 8
  %114 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr i8, i8* %115, i64 %114
  store i8* %116, i8** %7, align 8
  br label %117

117:                                              ; preds = %91
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %73

120:                                              ; preds = %73
  ret i32 0
}

declare dso_local i32 @ethoc_write(%struct.ethoc*, i32, i32) #1

declare dso_local i32 @ethoc_write_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
