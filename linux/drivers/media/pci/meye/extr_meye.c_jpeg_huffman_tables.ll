; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_jpeg_huffman_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_jpeg_huffman_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_huffman_tables.tables = internal global [218 x i32] [i32 50431, i32 46336, i32 16, i32 258, i32 771, i32 1026, i32 1283, i32 1029, i32 4, i32 256, i32 381, i32 770, i32 1024, i32 1297, i32 8466, i32 16689, i32 4870, i32 24913, i32 8711, i32 5233, i32 33074, i32 41361, i32 8968, i32 45378, i32 5569, i32 53586, i32 9456, i32 25139, i32 33394, i32 2569, i32 5910, i32 6424, i32 9498, i32 10022, i32 10536, i32 13354, i32 13877, i32 14391, i32 14905, i32 17475, i32 17989, i32 18503, i32 19017, i32 21587, i32 22101, i32 22615, i32 23129, i32 25699, i32 26213, i32 26727, i32 27241, i32 29811, i32 30325, i32 30839, i32 31353, i32 33923, i32 34437, i32 34951, i32 35465, i32 37778, i32 38292, i32 38806, i32 39320, i32 41626, i32 42147, i32 42661, i32 43175, i32 43689, i32 46002, i32 46516, i32 47030, i32 47544, i32 49850, i32 50371, i32 50885, i32 51399, i32 51913, i32 54226, i32 54740, i32 55254, i32 55768, i32 57818, i32 58338, i32 58852, i32 59366, i32 59880, i32 61930, i32 62450, i32 62964, i32 63478, i32 63992, i32 65530, i32 50431, i32 46336, i32 17, i32 258, i32 1026, i32 772, i32 1796, i32 1029, i32 4, i32 513, i32 119, i32 513, i32 4355, i32 1284, i32 12577, i32 4614, i32 20801, i32 24839, i32 4977, i32 12834, i32 2177, i32 16916, i32 41361, i32 49585, i32 8969, i32 21043, i32 5616, i32 29282, i32 2769, i32 9238, i32 57652, i32 61733, i32 6167, i32 6681, i32 10022, i32 10536, i32 13610, i32 14134, i32 14648, i32 17210, i32 17732, i32 18246, i32 18760, i32 21322, i32 21844, i32 22358, i32 22872, i32 25434, i32 25956, i32 26470, i32 26984, i32 29546, i32 30068, i32 30582, i32 31096, i32 33402, i32 33923, i32 34437, i32 34951, i32 35465, i32 37778, i32 38292, i32 38806, i32 39320, i32 41626, i32 42147, i32 42661, i32 43175, i32 43689, i32 46002, i32 46516, i32 47030, i32 47544, i32 49850, i32 50371, i32 50885, i32 51399, i32 51913, i32 54226, i32 54740, i32 55254, i32 55768, i32 58074, i32 58595, i32 59109, i32 59623, i32 60137, i32 62450, i32 62964, i32 63478, i32 63992, i32 65530, i32 50431, i32 7936, i32 0, i32 1281, i32 257, i32 257, i32 257, i32 0, i32 0, i32 0, i32 0, i32 513, i32 1027, i32 1541, i32 2055, i32 2569, i32 65291, i32 50431, i32 7936, i32 1, i32 259, i32 257, i32 257, i32 257, i32 257, i32 0, i32 0, i32 0, i32 513, i32 1027, i32 1541, i32 2055, i32 2569, i32 65291], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @jpeg_huffman_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jpeg_huffman_tables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([218 x i32], [218 x i32]* @jpeg_huffman_tables.tables, i64 0, i64 0))
  %4 = load i32*, i32** %2, align 8
  store i32 %3, i32* %4, align 4
  ret i32* getelementptr inbounds ([218 x i32], [218 x i32]* @jpeg_huffman_tables.tables, i64 0, i64 0)
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
