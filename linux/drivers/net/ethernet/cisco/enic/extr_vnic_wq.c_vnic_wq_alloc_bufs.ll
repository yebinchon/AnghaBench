; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_wq.c_vnic_wq_alloc_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_wq.c_vnic_wq_alloc_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { %struct.vnic_wq_buf**, %struct.vnic_wq_buf*, %struct.vnic_wq_buf*, %struct.TYPE_2__ }
%struct.vnic_wq_buf = type { i32, %struct.vnic_wq_buf*, %struct.vnic_wq_buf*, i32* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_wq*)* @vnic_wq_alloc_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_wq_alloc_bufs(%struct.vnic_wq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_wq*, align 8
  %4 = alloca %struct.vnic_wq_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnic_wq* %0, %struct.vnic_wq** %3, align 8
  %9 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %10 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @VNIC_WQ_BUF_BLKS_NEEDED(i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @VNIC_WQ_BUF_BLK_SZ(i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vnic_wq_buf* @kzalloc(i32 %21, i32 %22)
  %24 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %25 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %24, i32 0, i32 0
  %26 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %26, i64 %28
  store %struct.vnic_wq_buf* %23, %struct.vnic_wq_buf** %29, align 8
  %30 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %31 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %30, i32 0, i32 0
  %32 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %32, i64 %34
  %36 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %35, align 8
  %37 = icmp ne %struct.vnic_wq_buf* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %161

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %148, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %151

50:                                               ; preds = %46
  %51 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %52 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %51, i32 0, i32 0
  %53 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %53, i64 %55
  %57 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %56, align 8
  store %struct.vnic_wq_buf* %57, %struct.vnic_wq_buf** %4, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %144, %50
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32 %60)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %147

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32 %65)
  %67 = mul i32 %64, %66
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %67, %68
  %70 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %71 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %73 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %78 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %82 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul i32 %80, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %76, i64 %85
  %87 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %88 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  %89 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %90 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, 1
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %63
  %96 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %97 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %96, i32 0, i32 0
  %98 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %97, align 8
  %99 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %98, i64 0
  %100 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %99, align 8
  %101 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %102 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %101, i32 0, i32 2
  store %struct.vnic_wq_buf* %100, %struct.vnic_wq_buf** %102, align 8
  %103 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %104 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %105 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %104, i32 0, i32 2
  %106 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %105, align 8
  %107 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %106, i32 0, i32 1
  store %struct.vnic_wq_buf* %103, %struct.vnic_wq_buf** %107, align 8
  br label %147

108:                                              ; preds = %63
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, 1
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32 %111)
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %108
  %115 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %116 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %115, i32 0, i32 0
  %117 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %117, i64 %120
  %122 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %121, align 8
  %123 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %124 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %123, i32 0, i32 2
  store %struct.vnic_wq_buf* %122, %struct.vnic_wq_buf** %124, align 8
  %125 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %126 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %127 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %126, i32 0, i32 2
  %128 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %127, align 8
  %129 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %128, i32 0, i32 1
  store %struct.vnic_wq_buf* %125, %struct.vnic_wq_buf** %129, align 8
  br label %142

130:                                              ; preds = %108
  %131 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %132 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %131, i64 1
  %133 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %134 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %133, i32 0, i32 2
  store %struct.vnic_wq_buf* %132, %struct.vnic_wq_buf** %134, align 8
  %135 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %136 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %137 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %136, i32 0, i32 2
  %138 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %137, align 8
  %139 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %138, i32 0, i32 1
  store %struct.vnic_wq_buf* %135, %struct.vnic_wq_buf** %139, align 8
  %140 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %141 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %140, i32 1
  store %struct.vnic_wq_buf* %141, %struct.vnic_wq_buf** %4, align 8
  br label %142

142:                                              ; preds = %130, %114
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %58

147:                                              ; preds = %95, %58
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %46

151:                                              ; preds = %46
  %152 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %153 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %152, i32 0, i32 0
  %154 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %153, align 8
  %155 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %154, i64 0
  %156 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %155, align 8
  %157 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %158 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %157, i32 0, i32 1
  store %struct.vnic_wq_buf* %156, %struct.vnic_wq_buf** %158, align 8
  %159 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %160 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %159, i32 0, i32 2
  store %struct.vnic_wq_buf* %156, %struct.vnic_wq_buf** %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %151, %38
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @VNIC_WQ_BUF_BLKS_NEEDED(i32) #1

declare dso_local %struct.vnic_wq_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @VNIC_WQ_BUF_BLK_SZ(i32) #1

declare dso_local i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
