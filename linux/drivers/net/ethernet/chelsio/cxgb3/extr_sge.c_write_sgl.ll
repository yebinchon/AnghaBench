; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_write_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_write_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sg_ent = type { i8**, i8** }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sg_ent*, i8*, i32, i32*)* @write_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_sgl(%struct.sk_buff* %0, %struct.sg_ent* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sg_ent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sg_ent* %1, %struct.sg_ent** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %22 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be64(i32 %30)
  %32 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %33 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %12, align 4
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  store i8* %31, i8** %38, align 8
  br label %39

39:                                               ; preds = %18, %5
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %86, %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @skb_frag_size(i32* %56)
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %60 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_be64(i32 %70)
  %72 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %73 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %71, i8** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = xor i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %48
  %83 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %84 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %83, i32 1
  store %struct.sg_ent* %84, %struct.sg_ent** %7, align 8
  br label %85

85:                                               ; preds = %82, %48
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %94 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  store i8* null, i8** %98, align 8
  br label %99

99:                                               ; preds = %92, %89
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = add i32 %100, %103
  %105 = mul i32 %104, 3
  %106 = udiv i32 %105, 2
  %107 = load i32, i32* %12, align 4
  %108 = add i32 %106, %107
  ret i32 %108
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
